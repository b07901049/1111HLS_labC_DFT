#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void dft(int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*, int*);
extern "C" void apatb_dft_hw(volatile void * __xlx_apatb_param_real_sample, volatile void * __xlx_apatb_param_imag_sample, volatile void * __xlx_apatb_param_real_op_0, volatile void * __xlx_apatb_param_real_op_1, volatile void * __xlx_apatb_param_real_op_2, volatile void * __xlx_apatb_param_real_op_3, volatile void * __xlx_apatb_param_real_op_4, volatile void * __xlx_apatb_param_real_op_5, volatile void * __xlx_apatb_param_real_op_6, volatile void * __xlx_apatb_param_real_op_7, volatile void * __xlx_apatb_param_real_op_8, volatile void * __xlx_apatb_param_real_op_9, volatile void * __xlx_apatb_param_real_op_10, volatile void * __xlx_apatb_param_real_op_11, volatile void * __xlx_apatb_param_real_op_12, volatile void * __xlx_apatb_param_real_op_13, volatile void * __xlx_apatb_param_real_op_14, volatile void * __xlx_apatb_param_real_op_15, volatile void * __xlx_apatb_param_real_op_16, volatile void * __xlx_apatb_param_real_op_17, volatile void * __xlx_apatb_param_real_op_18, volatile void * __xlx_apatb_param_real_op_19, volatile void * __xlx_apatb_param_real_op_20, volatile void * __xlx_apatb_param_imag_op_0, volatile void * __xlx_apatb_param_imag_op_1, volatile void * __xlx_apatb_param_imag_op_2, volatile void * __xlx_apatb_param_imag_op_3, volatile void * __xlx_apatb_param_imag_op_4, volatile void * __xlx_apatb_param_imag_op_5, volatile void * __xlx_apatb_param_imag_op_6, volatile void * __xlx_apatb_param_imag_op_7, volatile void * __xlx_apatb_param_imag_op_8, volatile void * __xlx_apatb_param_imag_op_9, volatile void * __xlx_apatb_param_imag_op_10, volatile void * __xlx_apatb_param_imag_op_11, volatile void * __xlx_apatb_param_imag_op_12, volatile void * __xlx_apatb_param_imag_op_13, volatile void * __xlx_apatb_param_imag_op_14, volatile void * __xlx_apatb_param_imag_op_15, volatile void * __xlx_apatb_param_imag_op_16, volatile void * __xlx_apatb_param_imag_op_17, volatile void * __xlx_apatb_param_imag_op_18, volatile void * __xlx_apatb_param_imag_op_19, volatile void * __xlx_apatb_param_imag_op_20) {
  // Collect __xlx_real_sample__tmp_vec
  vector<sc_bv<32> >__xlx_real_sample__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_sample)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_sample)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_sample)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_sample)[j*4+3];
    __xlx_real_sample__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_sample = 1024;
  int __xlx_offset_param_real_sample = 0;
  int __xlx_offset_byte_param_real_sample = 0*4;
  int* __xlx_real_sample__input_buffer= new int[__xlx_real_sample__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_sample__tmp_vec.size(); ++i) {
    __xlx_real_sample__input_buffer[i] = __xlx_real_sample__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_sample__tmp_vec
  vector<sc_bv<32> >__xlx_imag_sample__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_sample)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_sample)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_sample)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_sample)[j*4+3];
    __xlx_imag_sample__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_sample = 1024;
  int __xlx_offset_param_imag_sample = 0;
  int __xlx_offset_byte_param_imag_sample = 0*4;
  int* __xlx_imag_sample__input_buffer= new int[__xlx_imag_sample__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_sample__tmp_vec.size(); ++i) {
    __xlx_imag_sample__input_buffer[i] = __xlx_imag_sample__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_0__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_0__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_0)[j*4+3];
    __xlx_real_op_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_0 = 49;
  int __xlx_offset_param_real_op_0 = 0;
  int __xlx_offset_byte_param_real_op_0 = 0*4;
  int* __xlx_real_op_0__input_buffer= new int[__xlx_real_op_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_0__tmp_vec.size(); ++i) {
    __xlx_real_op_0__input_buffer[i] = __xlx_real_op_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_1__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_1__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_1)[j*4+3];
    __xlx_real_op_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_1 = 49;
  int __xlx_offset_param_real_op_1 = 0;
  int __xlx_offset_byte_param_real_op_1 = 0*4;
  int* __xlx_real_op_1__input_buffer= new int[__xlx_real_op_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_1__tmp_vec.size(); ++i) {
    __xlx_real_op_1__input_buffer[i] = __xlx_real_op_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_2__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_2__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_2)[j*4+3];
    __xlx_real_op_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_2 = 49;
  int __xlx_offset_param_real_op_2 = 0;
  int __xlx_offset_byte_param_real_op_2 = 0*4;
  int* __xlx_real_op_2__input_buffer= new int[__xlx_real_op_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_2__tmp_vec.size(); ++i) {
    __xlx_real_op_2__input_buffer[i] = __xlx_real_op_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_3__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_3__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_3)[j*4+3];
    __xlx_real_op_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_3 = 49;
  int __xlx_offset_param_real_op_3 = 0;
  int __xlx_offset_byte_param_real_op_3 = 0*4;
  int* __xlx_real_op_3__input_buffer= new int[__xlx_real_op_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_3__tmp_vec.size(); ++i) {
    __xlx_real_op_3__input_buffer[i] = __xlx_real_op_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_4__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_4__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_4)[j*4+3];
    __xlx_real_op_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_4 = 49;
  int __xlx_offset_param_real_op_4 = 0;
  int __xlx_offset_byte_param_real_op_4 = 0*4;
  int* __xlx_real_op_4__input_buffer= new int[__xlx_real_op_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_4__tmp_vec.size(); ++i) {
    __xlx_real_op_4__input_buffer[i] = __xlx_real_op_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_5__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_5__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_5)[j*4+3];
    __xlx_real_op_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_5 = 49;
  int __xlx_offset_param_real_op_5 = 0;
  int __xlx_offset_byte_param_real_op_5 = 0*4;
  int* __xlx_real_op_5__input_buffer= new int[__xlx_real_op_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_5__tmp_vec.size(); ++i) {
    __xlx_real_op_5__input_buffer[i] = __xlx_real_op_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_6__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_6__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_6)[j*4+3];
    __xlx_real_op_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_6 = 49;
  int __xlx_offset_param_real_op_6 = 0;
  int __xlx_offset_byte_param_real_op_6 = 0*4;
  int* __xlx_real_op_6__input_buffer= new int[__xlx_real_op_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_6__tmp_vec.size(); ++i) {
    __xlx_real_op_6__input_buffer[i] = __xlx_real_op_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_7__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_7__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_7)[j*4+3];
    __xlx_real_op_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_7 = 49;
  int __xlx_offset_param_real_op_7 = 0;
  int __xlx_offset_byte_param_real_op_7 = 0*4;
  int* __xlx_real_op_7__input_buffer= new int[__xlx_real_op_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_7__tmp_vec.size(); ++i) {
    __xlx_real_op_7__input_buffer[i] = __xlx_real_op_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_8__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_8__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_8)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_8)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_8)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_8)[j*4+3];
    __xlx_real_op_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_8 = 49;
  int __xlx_offset_param_real_op_8 = 0;
  int __xlx_offset_byte_param_real_op_8 = 0*4;
  int* __xlx_real_op_8__input_buffer= new int[__xlx_real_op_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_8__tmp_vec.size(); ++i) {
    __xlx_real_op_8__input_buffer[i] = __xlx_real_op_8__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_9__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_9__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_9)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_9)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_9)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_9)[j*4+3];
    __xlx_real_op_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_9 = 49;
  int __xlx_offset_param_real_op_9 = 0;
  int __xlx_offset_byte_param_real_op_9 = 0*4;
  int* __xlx_real_op_9__input_buffer= new int[__xlx_real_op_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_9__tmp_vec.size(); ++i) {
    __xlx_real_op_9__input_buffer[i] = __xlx_real_op_9__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_10__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_10__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_10)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_10)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_10)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_10)[j*4+3];
    __xlx_real_op_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_10 = 49;
  int __xlx_offset_param_real_op_10 = 0;
  int __xlx_offset_byte_param_real_op_10 = 0*4;
  int* __xlx_real_op_10__input_buffer= new int[__xlx_real_op_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_10__tmp_vec.size(); ++i) {
    __xlx_real_op_10__input_buffer[i] = __xlx_real_op_10__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_11__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_11__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_11)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_11)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_11)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_11)[j*4+3];
    __xlx_real_op_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_11 = 49;
  int __xlx_offset_param_real_op_11 = 0;
  int __xlx_offset_byte_param_real_op_11 = 0*4;
  int* __xlx_real_op_11__input_buffer= new int[__xlx_real_op_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_11__tmp_vec.size(); ++i) {
    __xlx_real_op_11__input_buffer[i] = __xlx_real_op_11__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_12__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_12__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_12)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_12)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_12)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_12)[j*4+3];
    __xlx_real_op_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_12 = 49;
  int __xlx_offset_param_real_op_12 = 0;
  int __xlx_offset_byte_param_real_op_12 = 0*4;
  int* __xlx_real_op_12__input_buffer= new int[__xlx_real_op_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_12__tmp_vec.size(); ++i) {
    __xlx_real_op_12__input_buffer[i] = __xlx_real_op_12__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_13__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_13__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_13)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_13)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_13)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_13)[j*4+3];
    __xlx_real_op_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_13 = 49;
  int __xlx_offset_param_real_op_13 = 0;
  int __xlx_offset_byte_param_real_op_13 = 0*4;
  int* __xlx_real_op_13__input_buffer= new int[__xlx_real_op_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_13__tmp_vec.size(); ++i) {
    __xlx_real_op_13__input_buffer[i] = __xlx_real_op_13__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_14__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_14__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_14)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_14)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_14)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_14)[j*4+3];
    __xlx_real_op_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_14 = 49;
  int __xlx_offset_param_real_op_14 = 0;
  int __xlx_offset_byte_param_real_op_14 = 0*4;
  int* __xlx_real_op_14__input_buffer= new int[__xlx_real_op_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_14__tmp_vec.size(); ++i) {
    __xlx_real_op_14__input_buffer[i] = __xlx_real_op_14__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_15__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_15__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_15)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_15)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_15)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_15)[j*4+3];
    __xlx_real_op_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_15 = 49;
  int __xlx_offset_param_real_op_15 = 0;
  int __xlx_offset_byte_param_real_op_15 = 0*4;
  int* __xlx_real_op_15__input_buffer= new int[__xlx_real_op_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_15__tmp_vec.size(); ++i) {
    __xlx_real_op_15__input_buffer[i] = __xlx_real_op_15__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_16__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_16__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_16)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_16)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_16)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_16)[j*4+3];
    __xlx_real_op_16__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_16 = 49;
  int __xlx_offset_param_real_op_16 = 0;
  int __xlx_offset_byte_param_real_op_16 = 0*4;
  int* __xlx_real_op_16__input_buffer= new int[__xlx_real_op_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_16__tmp_vec.size(); ++i) {
    __xlx_real_op_16__input_buffer[i] = __xlx_real_op_16__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_17__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_17__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_17)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_17)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_17)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_17)[j*4+3];
    __xlx_real_op_17__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_17 = 49;
  int __xlx_offset_param_real_op_17 = 0;
  int __xlx_offset_byte_param_real_op_17 = 0*4;
  int* __xlx_real_op_17__input_buffer= new int[__xlx_real_op_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_17__tmp_vec.size(); ++i) {
    __xlx_real_op_17__input_buffer[i] = __xlx_real_op_17__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_18__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_18__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_18)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_18)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_18)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_18)[j*4+3];
    __xlx_real_op_18__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_18 = 49;
  int __xlx_offset_param_real_op_18 = 0;
  int __xlx_offset_byte_param_real_op_18 = 0*4;
  int* __xlx_real_op_18__input_buffer= new int[__xlx_real_op_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_18__tmp_vec.size(); ++i) {
    __xlx_real_op_18__input_buffer[i] = __xlx_real_op_18__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_19__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_19__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_19)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_19)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_19)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_19)[j*4+3];
    __xlx_real_op_19__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_19 = 49;
  int __xlx_offset_param_real_op_19 = 0;
  int __xlx_offset_byte_param_real_op_19 = 0*4;
  int* __xlx_real_op_19__input_buffer= new int[__xlx_real_op_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_19__tmp_vec.size(); ++i) {
    __xlx_real_op_19__input_buffer[i] = __xlx_real_op_19__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_real_op_20__tmp_vec
  vector<sc_bv<32> >__xlx_real_op_20__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_real_op_20)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_real_op_20)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_real_op_20)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_real_op_20)[j*4+3];
    __xlx_real_op_20__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_real_op_20 = 49;
  int __xlx_offset_param_real_op_20 = 0;
  int __xlx_offset_byte_param_real_op_20 = 0*4;
  int* __xlx_real_op_20__input_buffer= new int[__xlx_real_op_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_real_op_20__tmp_vec.size(); ++i) {
    __xlx_real_op_20__input_buffer[i] = __xlx_real_op_20__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_0__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_0__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_0)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_0)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_0)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_0)[j*4+3];
    __xlx_imag_op_0__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_0 = 49;
  int __xlx_offset_param_imag_op_0 = 0;
  int __xlx_offset_byte_param_imag_op_0 = 0*4;
  int* __xlx_imag_op_0__input_buffer= new int[__xlx_imag_op_0__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_0__tmp_vec.size(); ++i) {
    __xlx_imag_op_0__input_buffer[i] = __xlx_imag_op_0__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_1__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_1__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_1)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_1)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_1)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_1)[j*4+3];
    __xlx_imag_op_1__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_1 = 49;
  int __xlx_offset_param_imag_op_1 = 0;
  int __xlx_offset_byte_param_imag_op_1 = 0*4;
  int* __xlx_imag_op_1__input_buffer= new int[__xlx_imag_op_1__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_1__tmp_vec.size(); ++i) {
    __xlx_imag_op_1__input_buffer[i] = __xlx_imag_op_1__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_2__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_2__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_2)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_2)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_2)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_2)[j*4+3];
    __xlx_imag_op_2__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_2 = 49;
  int __xlx_offset_param_imag_op_2 = 0;
  int __xlx_offset_byte_param_imag_op_2 = 0*4;
  int* __xlx_imag_op_2__input_buffer= new int[__xlx_imag_op_2__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_2__tmp_vec.size(); ++i) {
    __xlx_imag_op_2__input_buffer[i] = __xlx_imag_op_2__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_3__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_3__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_3)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_3)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_3)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_3)[j*4+3];
    __xlx_imag_op_3__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_3 = 49;
  int __xlx_offset_param_imag_op_3 = 0;
  int __xlx_offset_byte_param_imag_op_3 = 0*4;
  int* __xlx_imag_op_3__input_buffer= new int[__xlx_imag_op_3__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_3__tmp_vec.size(); ++i) {
    __xlx_imag_op_3__input_buffer[i] = __xlx_imag_op_3__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_4__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_4__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_4)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_4)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_4)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_4)[j*4+3];
    __xlx_imag_op_4__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_4 = 49;
  int __xlx_offset_param_imag_op_4 = 0;
  int __xlx_offset_byte_param_imag_op_4 = 0*4;
  int* __xlx_imag_op_4__input_buffer= new int[__xlx_imag_op_4__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_4__tmp_vec.size(); ++i) {
    __xlx_imag_op_4__input_buffer[i] = __xlx_imag_op_4__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_5__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_5__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_5)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_5)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_5)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_5)[j*4+3];
    __xlx_imag_op_5__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_5 = 49;
  int __xlx_offset_param_imag_op_5 = 0;
  int __xlx_offset_byte_param_imag_op_5 = 0*4;
  int* __xlx_imag_op_5__input_buffer= new int[__xlx_imag_op_5__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_5__tmp_vec.size(); ++i) {
    __xlx_imag_op_5__input_buffer[i] = __xlx_imag_op_5__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_6__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_6__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_6)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_6)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_6)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_6)[j*4+3];
    __xlx_imag_op_6__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_6 = 49;
  int __xlx_offset_param_imag_op_6 = 0;
  int __xlx_offset_byte_param_imag_op_6 = 0*4;
  int* __xlx_imag_op_6__input_buffer= new int[__xlx_imag_op_6__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_6__tmp_vec.size(); ++i) {
    __xlx_imag_op_6__input_buffer[i] = __xlx_imag_op_6__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_7__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_7__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_7)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_7)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_7)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_7)[j*4+3];
    __xlx_imag_op_7__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_7 = 49;
  int __xlx_offset_param_imag_op_7 = 0;
  int __xlx_offset_byte_param_imag_op_7 = 0*4;
  int* __xlx_imag_op_7__input_buffer= new int[__xlx_imag_op_7__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_7__tmp_vec.size(); ++i) {
    __xlx_imag_op_7__input_buffer[i] = __xlx_imag_op_7__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_8__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_8__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_8)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_8)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_8)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_8)[j*4+3];
    __xlx_imag_op_8__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_8 = 49;
  int __xlx_offset_param_imag_op_8 = 0;
  int __xlx_offset_byte_param_imag_op_8 = 0*4;
  int* __xlx_imag_op_8__input_buffer= new int[__xlx_imag_op_8__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_8__tmp_vec.size(); ++i) {
    __xlx_imag_op_8__input_buffer[i] = __xlx_imag_op_8__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_9__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_9__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_9)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_9)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_9)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_9)[j*4+3];
    __xlx_imag_op_9__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_9 = 49;
  int __xlx_offset_param_imag_op_9 = 0;
  int __xlx_offset_byte_param_imag_op_9 = 0*4;
  int* __xlx_imag_op_9__input_buffer= new int[__xlx_imag_op_9__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_9__tmp_vec.size(); ++i) {
    __xlx_imag_op_9__input_buffer[i] = __xlx_imag_op_9__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_10__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_10__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_10)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_10)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_10)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_10)[j*4+3];
    __xlx_imag_op_10__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_10 = 49;
  int __xlx_offset_param_imag_op_10 = 0;
  int __xlx_offset_byte_param_imag_op_10 = 0*4;
  int* __xlx_imag_op_10__input_buffer= new int[__xlx_imag_op_10__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_10__tmp_vec.size(); ++i) {
    __xlx_imag_op_10__input_buffer[i] = __xlx_imag_op_10__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_11__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_11__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_11)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_11)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_11)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_11)[j*4+3];
    __xlx_imag_op_11__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_11 = 49;
  int __xlx_offset_param_imag_op_11 = 0;
  int __xlx_offset_byte_param_imag_op_11 = 0*4;
  int* __xlx_imag_op_11__input_buffer= new int[__xlx_imag_op_11__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_11__tmp_vec.size(); ++i) {
    __xlx_imag_op_11__input_buffer[i] = __xlx_imag_op_11__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_12__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_12__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_12)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_12)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_12)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_12)[j*4+3];
    __xlx_imag_op_12__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_12 = 49;
  int __xlx_offset_param_imag_op_12 = 0;
  int __xlx_offset_byte_param_imag_op_12 = 0*4;
  int* __xlx_imag_op_12__input_buffer= new int[__xlx_imag_op_12__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_12__tmp_vec.size(); ++i) {
    __xlx_imag_op_12__input_buffer[i] = __xlx_imag_op_12__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_13__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_13__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_13)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_13)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_13)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_13)[j*4+3];
    __xlx_imag_op_13__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_13 = 49;
  int __xlx_offset_param_imag_op_13 = 0;
  int __xlx_offset_byte_param_imag_op_13 = 0*4;
  int* __xlx_imag_op_13__input_buffer= new int[__xlx_imag_op_13__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_13__tmp_vec.size(); ++i) {
    __xlx_imag_op_13__input_buffer[i] = __xlx_imag_op_13__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_14__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_14__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_14)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_14)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_14)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_14)[j*4+3];
    __xlx_imag_op_14__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_14 = 49;
  int __xlx_offset_param_imag_op_14 = 0;
  int __xlx_offset_byte_param_imag_op_14 = 0*4;
  int* __xlx_imag_op_14__input_buffer= new int[__xlx_imag_op_14__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_14__tmp_vec.size(); ++i) {
    __xlx_imag_op_14__input_buffer[i] = __xlx_imag_op_14__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_15__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_15__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_15)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_15)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_15)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_15)[j*4+3];
    __xlx_imag_op_15__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_15 = 49;
  int __xlx_offset_param_imag_op_15 = 0;
  int __xlx_offset_byte_param_imag_op_15 = 0*4;
  int* __xlx_imag_op_15__input_buffer= new int[__xlx_imag_op_15__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_15__tmp_vec.size(); ++i) {
    __xlx_imag_op_15__input_buffer[i] = __xlx_imag_op_15__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_16__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_16__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_16)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_16)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_16)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_16)[j*4+3];
    __xlx_imag_op_16__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_16 = 49;
  int __xlx_offset_param_imag_op_16 = 0;
  int __xlx_offset_byte_param_imag_op_16 = 0*4;
  int* __xlx_imag_op_16__input_buffer= new int[__xlx_imag_op_16__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_16__tmp_vec.size(); ++i) {
    __xlx_imag_op_16__input_buffer[i] = __xlx_imag_op_16__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_17__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_17__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_17)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_17)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_17)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_17)[j*4+3];
    __xlx_imag_op_17__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_17 = 49;
  int __xlx_offset_param_imag_op_17 = 0;
  int __xlx_offset_byte_param_imag_op_17 = 0*4;
  int* __xlx_imag_op_17__input_buffer= new int[__xlx_imag_op_17__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_17__tmp_vec.size(); ++i) {
    __xlx_imag_op_17__input_buffer[i] = __xlx_imag_op_17__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_18__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_18__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_18)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_18)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_18)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_18)[j*4+3];
    __xlx_imag_op_18__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_18 = 49;
  int __xlx_offset_param_imag_op_18 = 0;
  int __xlx_offset_byte_param_imag_op_18 = 0*4;
  int* __xlx_imag_op_18__input_buffer= new int[__xlx_imag_op_18__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_18__tmp_vec.size(); ++i) {
    __xlx_imag_op_18__input_buffer[i] = __xlx_imag_op_18__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_19__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_19__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_19)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_19)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_19)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_19)[j*4+3];
    __xlx_imag_op_19__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_19 = 49;
  int __xlx_offset_param_imag_op_19 = 0;
  int __xlx_offset_byte_param_imag_op_19 = 0*4;
  int* __xlx_imag_op_19__input_buffer= new int[__xlx_imag_op_19__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_19__tmp_vec.size(); ++i) {
    __xlx_imag_op_19__input_buffer[i] = __xlx_imag_op_19__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_imag_op_20__tmp_vec
  vector<sc_bv<32> >__xlx_imag_op_20__tmp_vec;
  for (int j = 0, e = 49; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_imag_op_20)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_imag_op_20)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_imag_op_20)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_imag_op_20)[j*4+3];
    __xlx_imag_op_20__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_imag_op_20 = 49;
  int __xlx_offset_param_imag_op_20 = 0;
  int __xlx_offset_byte_param_imag_op_20 = 0*4;
  int* __xlx_imag_op_20__input_buffer= new int[__xlx_imag_op_20__tmp_vec.size()];
  for (int i = 0; i < __xlx_imag_op_20__tmp_vec.size(); ++i) {
    __xlx_imag_op_20__input_buffer[i] = __xlx_imag_op_20__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  dft(__xlx_real_sample__input_buffer, __xlx_imag_sample__input_buffer, __xlx_real_op_0__input_buffer, __xlx_real_op_1__input_buffer, __xlx_real_op_2__input_buffer, __xlx_real_op_3__input_buffer, __xlx_real_op_4__input_buffer, __xlx_real_op_5__input_buffer, __xlx_real_op_6__input_buffer, __xlx_real_op_7__input_buffer, __xlx_real_op_8__input_buffer, __xlx_real_op_9__input_buffer, __xlx_real_op_10__input_buffer, __xlx_real_op_11__input_buffer, __xlx_real_op_12__input_buffer, __xlx_real_op_13__input_buffer, __xlx_real_op_14__input_buffer, __xlx_real_op_15__input_buffer, __xlx_real_op_16__input_buffer, __xlx_real_op_17__input_buffer, __xlx_real_op_18__input_buffer, __xlx_real_op_19__input_buffer, __xlx_real_op_20__input_buffer, __xlx_imag_op_0__input_buffer, __xlx_imag_op_1__input_buffer, __xlx_imag_op_2__input_buffer, __xlx_imag_op_3__input_buffer, __xlx_imag_op_4__input_buffer, __xlx_imag_op_5__input_buffer, __xlx_imag_op_6__input_buffer, __xlx_imag_op_7__input_buffer, __xlx_imag_op_8__input_buffer, __xlx_imag_op_9__input_buffer, __xlx_imag_op_10__input_buffer, __xlx_imag_op_11__input_buffer, __xlx_imag_op_12__input_buffer, __xlx_imag_op_13__input_buffer, __xlx_imag_op_14__input_buffer, __xlx_imag_op_15__input_buffer, __xlx_imag_op_16__input_buffer, __xlx_imag_op_17__input_buffer, __xlx_imag_op_18__input_buffer, __xlx_imag_op_19__input_buffer, __xlx_imag_op_20__input_buffer);
// print __xlx_apatb_param_real_sample
  sc_bv<32>*__xlx_real_sample_output_buffer = new sc_bv<32>[__xlx_size_param_real_sample];
  for (int i = 0; i < __xlx_size_param_real_sample; ++i) {
    __xlx_real_sample_output_buffer[i] = __xlx_real_sample__input_buffer[i+__xlx_offset_param_real_sample];
  }
  for (int i = 0; i < __xlx_size_param_real_sample; ++i) {
    ((char*)__xlx_apatb_param_real_sample)[i*4+0] = __xlx_real_sample_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_sample)[i*4+1] = __xlx_real_sample_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_sample)[i*4+2] = __xlx_real_sample_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_sample)[i*4+3] = __xlx_real_sample_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_sample
  sc_bv<32>*__xlx_imag_sample_output_buffer = new sc_bv<32>[__xlx_size_param_imag_sample];
  for (int i = 0; i < __xlx_size_param_imag_sample; ++i) {
    __xlx_imag_sample_output_buffer[i] = __xlx_imag_sample__input_buffer[i+__xlx_offset_param_imag_sample];
  }
  for (int i = 0; i < __xlx_size_param_imag_sample; ++i) {
    ((char*)__xlx_apatb_param_imag_sample)[i*4+0] = __xlx_imag_sample_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_sample)[i*4+1] = __xlx_imag_sample_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_sample)[i*4+2] = __xlx_imag_sample_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_sample)[i*4+3] = __xlx_imag_sample_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_0
  sc_bv<32>*__xlx_real_op_0_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_0];
  for (int i = 0; i < __xlx_size_param_real_op_0; ++i) {
    __xlx_real_op_0_output_buffer[i] = __xlx_real_op_0__input_buffer[i+__xlx_offset_param_real_op_0];
  }
  for (int i = 0; i < __xlx_size_param_real_op_0; ++i) {
    ((char*)__xlx_apatb_param_real_op_0)[i*4+0] = __xlx_real_op_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_0)[i*4+1] = __xlx_real_op_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_0)[i*4+2] = __xlx_real_op_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_0)[i*4+3] = __xlx_real_op_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_1
  sc_bv<32>*__xlx_real_op_1_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_1];
  for (int i = 0; i < __xlx_size_param_real_op_1; ++i) {
    __xlx_real_op_1_output_buffer[i] = __xlx_real_op_1__input_buffer[i+__xlx_offset_param_real_op_1];
  }
  for (int i = 0; i < __xlx_size_param_real_op_1; ++i) {
    ((char*)__xlx_apatb_param_real_op_1)[i*4+0] = __xlx_real_op_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_1)[i*4+1] = __xlx_real_op_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_1)[i*4+2] = __xlx_real_op_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_1)[i*4+3] = __xlx_real_op_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_2
  sc_bv<32>*__xlx_real_op_2_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_2];
  for (int i = 0; i < __xlx_size_param_real_op_2; ++i) {
    __xlx_real_op_2_output_buffer[i] = __xlx_real_op_2__input_buffer[i+__xlx_offset_param_real_op_2];
  }
  for (int i = 0; i < __xlx_size_param_real_op_2; ++i) {
    ((char*)__xlx_apatb_param_real_op_2)[i*4+0] = __xlx_real_op_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_2)[i*4+1] = __xlx_real_op_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_2)[i*4+2] = __xlx_real_op_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_2)[i*4+3] = __xlx_real_op_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_3
  sc_bv<32>*__xlx_real_op_3_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_3];
  for (int i = 0; i < __xlx_size_param_real_op_3; ++i) {
    __xlx_real_op_3_output_buffer[i] = __xlx_real_op_3__input_buffer[i+__xlx_offset_param_real_op_3];
  }
  for (int i = 0; i < __xlx_size_param_real_op_3; ++i) {
    ((char*)__xlx_apatb_param_real_op_3)[i*4+0] = __xlx_real_op_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_3)[i*4+1] = __xlx_real_op_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_3)[i*4+2] = __xlx_real_op_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_3)[i*4+3] = __xlx_real_op_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_4
  sc_bv<32>*__xlx_real_op_4_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_4];
  for (int i = 0; i < __xlx_size_param_real_op_4; ++i) {
    __xlx_real_op_4_output_buffer[i] = __xlx_real_op_4__input_buffer[i+__xlx_offset_param_real_op_4];
  }
  for (int i = 0; i < __xlx_size_param_real_op_4; ++i) {
    ((char*)__xlx_apatb_param_real_op_4)[i*4+0] = __xlx_real_op_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_4)[i*4+1] = __xlx_real_op_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_4)[i*4+2] = __xlx_real_op_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_4)[i*4+3] = __xlx_real_op_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_5
  sc_bv<32>*__xlx_real_op_5_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_5];
  for (int i = 0; i < __xlx_size_param_real_op_5; ++i) {
    __xlx_real_op_5_output_buffer[i] = __xlx_real_op_5__input_buffer[i+__xlx_offset_param_real_op_5];
  }
  for (int i = 0; i < __xlx_size_param_real_op_5; ++i) {
    ((char*)__xlx_apatb_param_real_op_5)[i*4+0] = __xlx_real_op_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_5)[i*4+1] = __xlx_real_op_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_5)[i*4+2] = __xlx_real_op_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_5)[i*4+3] = __xlx_real_op_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_6
  sc_bv<32>*__xlx_real_op_6_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_6];
  for (int i = 0; i < __xlx_size_param_real_op_6; ++i) {
    __xlx_real_op_6_output_buffer[i] = __xlx_real_op_6__input_buffer[i+__xlx_offset_param_real_op_6];
  }
  for (int i = 0; i < __xlx_size_param_real_op_6; ++i) {
    ((char*)__xlx_apatb_param_real_op_6)[i*4+0] = __xlx_real_op_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_6)[i*4+1] = __xlx_real_op_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_6)[i*4+2] = __xlx_real_op_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_6)[i*4+3] = __xlx_real_op_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_7
  sc_bv<32>*__xlx_real_op_7_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_7];
  for (int i = 0; i < __xlx_size_param_real_op_7; ++i) {
    __xlx_real_op_7_output_buffer[i] = __xlx_real_op_7__input_buffer[i+__xlx_offset_param_real_op_7];
  }
  for (int i = 0; i < __xlx_size_param_real_op_7; ++i) {
    ((char*)__xlx_apatb_param_real_op_7)[i*4+0] = __xlx_real_op_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_7)[i*4+1] = __xlx_real_op_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_7)[i*4+2] = __xlx_real_op_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_7)[i*4+3] = __xlx_real_op_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_8
  sc_bv<32>*__xlx_real_op_8_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_8];
  for (int i = 0; i < __xlx_size_param_real_op_8; ++i) {
    __xlx_real_op_8_output_buffer[i] = __xlx_real_op_8__input_buffer[i+__xlx_offset_param_real_op_8];
  }
  for (int i = 0; i < __xlx_size_param_real_op_8; ++i) {
    ((char*)__xlx_apatb_param_real_op_8)[i*4+0] = __xlx_real_op_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_8)[i*4+1] = __xlx_real_op_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_8)[i*4+2] = __xlx_real_op_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_8)[i*4+3] = __xlx_real_op_8_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_9
  sc_bv<32>*__xlx_real_op_9_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_9];
  for (int i = 0; i < __xlx_size_param_real_op_9; ++i) {
    __xlx_real_op_9_output_buffer[i] = __xlx_real_op_9__input_buffer[i+__xlx_offset_param_real_op_9];
  }
  for (int i = 0; i < __xlx_size_param_real_op_9; ++i) {
    ((char*)__xlx_apatb_param_real_op_9)[i*4+0] = __xlx_real_op_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_9)[i*4+1] = __xlx_real_op_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_9)[i*4+2] = __xlx_real_op_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_9)[i*4+3] = __xlx_real_op_9_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_10
  sc_bv<32>*__xlx_real_op_10_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_10];
  for (int i = 0; i < __xlx_size_param_real_op_10; ++i) {
    __xlx_real_op_10_output_buffer[i] = __xlx_real_op_10__input_buffer[i+__xlx_offset_param_real_op_10];
  }
  for (int i = 0; i < __xlx_size_param_real_op_10; ++i) {
    ((char*)__xlx_apatb_param_real_op_10)[i*4+0] = __xlx_real_op_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_10)[i*4+1] = __xlx_real_op_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_10)[i*4+2] = __xlx_real_op_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_10)[i*4+3] = __xlx_real_op_10_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_11
  sc_bv<32>*__xlx_real_op_11_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_11];
  for (int i = 0; i < __xlx_size_param_real_op_11; ++i) {
    __xlx_real_op_11_output_buffer[i] = __xlx_real_op_11__input_buffer[i+__xlx_offset_param_real_op_11];
  }
  for (int i = 0; i < __xlx_size_param_real_op_11; ++i) {
    ((char*)__xlx_apatb_param_real_op_11)[i*4+0] = __xlx_real_op_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_11)[i*4+1] = __xlx_real_op_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_11)[i*4+2] = __xlx_real_op_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_11)[i*4+3] = __xlx_real_op_11_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_12
  sc_bv<32>*__xlx_real_op_12_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_12];
  for (int i = 0; i < __xlx_size_param_real_op_12; ++i) {
    __xlx_real_op_12_output_buffer[i] = __xlx_real_op_12__input_buffer[i+__xlx_offset_param_real_op_12];
  }
  for (int i = 0; i < __xlx_size_param_real_op_12; ++i) {
    ((char*)__xlx_apatb_param_real_op_12)[i*4+0] = __xlx_real_op_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_12)[i*4+1] = __xlx_real_op_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_12)[i*4+2] = __xlx_real_op_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_12)[i*4+3] = __xlx_real_op_12_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_13
  sc_bv<32>*__xlx_real_op_13_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_13];
  for (int i = 0; i < __xlx_size_param_real_op_13; ++i) {
    __xlx_real_op_13_output_buffer[i] = __xlx_real_op_13__input_buffer[i+__xlx_offset_param_real_op_13];
  }
  for (int i = 0; i < __xlx_size_param_real_op_13; ++i) {
    ((char*)__xlx_apatb_param_real_op_13)[i*4+0] = __xlx_real_op_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_13)[i*4+1] = __xlx_real_op_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_13)[i*4+2] = __xlx_real_op_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_13)[i*4+3] = __xlx_real_op_13_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_14
  sc_bv<32>*__xlx_real_op_14_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_14];
  for (int i = 0; i < __xlx_size_param_real_op_14; ++i) {
    __xlx_real_op_14_output_buffer[i] = __xlx_real_op_14__input_buffer[i+__xlx_offset_param_real_op_14];
  }
  for (int i = 0; i < __xlx_size_param_real_op_14; ++i) {
    ((char*)__xlx_apatb_param_real_op_14)[i*4+0] = __xlx_real_op_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_14)[i*4+1] = __xlx_real_op_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_14)[i*4+2] = __xlx_real_op_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_14)[i*4+3] = __xlx_real_op_14_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_15
  sc_bv<32>*__xlx_real_op_15_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_15];
  for (int i = 0; i < __xlx_size_param_real_op_15; ++i) {
    __xlx_real_op_15_output_buffer[i] = __xlx_real_op_15__input_buffer[i+__xlx_offset_param_real_op_15];
  }
  for (int i = 0; i < __xlx_size_param_real_op_15; ++i) {
    ((char*)__xlx_apatb_param_real_op_15)[i*4+0] = __xlx_real_op_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_15)[i*4+1] = __xlx_real_op_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_15)[i*4+2] = __xlx_real_op_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_15)[i*4+3] = __xlx_real_op_15_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_16
  sc_bv<32>*__xlx_real_op_16_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_16];
  for (int i = 0; i < __xlx_size_param_real_op_16; ++i) {
    __xlx_real_op_16_output_buffer[i] = __xlx_real_op_16__input_buffer[i+__xlx_offset_param_real_op_16];
  }
  for (int i = 0; i < __xlx_size_param_real_op_16; ++i) {
    ((char*)__xlx_apatb_param_real_op_16)[i*4+0] = __xlx_real_op_16_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_16)[i*4+1] = __xlx_real_op_16_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_16)[i*4+2] = __xlx_real_op_16_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_16)[i*4+3] = __xlx_real_op_16_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_17
  sc_bv<32>*__xlx_real_op_17_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_17];
  for (int i = 0; i < __xlx_size_param_real_op_17; ++i) {
    __xlx_real_op_17_output_buffer[i] = __xlx_real_op_17__input_buffer[i+__xlx_offset_param_real_op_17];
  }
  for (int i = 0; i < __xlx_size_param_real_op_17; ++i) {
    ((char*)__xlx_apatb_param_real_op_17)[i*4+0] = __xlx_real_op_17_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_17)[i*4+1] = __xlx_real_op_17_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_17)[i*4+2] = __xlx_real_op_17_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_17)[i*4+3] = __xlx_real_op_17_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_18
  sc_bv<32>*__xlx_real_op_18_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_18];
  for (int i = 0; i < __xlx_size_param_real_op_18; ++i) {
    __xlx_real_op_18_output_buffer[i] = __xlx_real_op_18__input_buffer[i+__xlx_offset_param_real_op_18];
  }
  for (int i = 0; i < __xlx_size_param_real_op_18; ++i) {
    ((char*)__xlx_apatb_param_real_op_18)[i*4+0] = __xlx_real_op_18_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_18)[i*4+1] = __xlx_real_op_18_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_18)[i*4+2] = __xlx_real_op_18_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_18)[i*4+3] = __xlx_real_op_18_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_19
  sc_bv<32>*__xlx_real_op_19_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_19];
  for (int i = 0; i < __xlx_size_param_real_op_19; ++i) {
    __xlx_real_op_19_output_buffer[i] = __xlx_real_op_19__input_buffer[i+__xlx_offset_param_real_op_19];
  }
  for (int i = 0; i < __xlx_size_param_real_op_19; ++i) {
    ((char*)__xlx_apatb_param_real_op_19)[i*4+0] = __xlx_real_op_19_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_19)[i*4+1] = __xlx_real_op_19_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_19)[i*4+2] = __xlx_real_op_19_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_19)[i*4+3] = __xlx_real_op_19_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_real_op_20
  sc_bv<32>*__xlx_real_op_20_output_buffer = new sc_bv<32>[__xlx_size_param_real_op_20];
  for (int i = 0; i < __xlx_size_param_real_op_20; ++i) {
    __xlx_real_op_20_output_buffer[i] = __xlx_real_op_20__input_buffer[i+__xlx_offset_param_real_op_20];
  }
  for (int i = 0; i < __xlx_size_param_real_op_20; ++i) {
    ((char*)__xlx_apatb_param_real_op_20)[i*4+0] = __xlx_real_op_20_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_real_op_20)[i*4+1] = __xlx_real_op_20_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_real_op_20)[i*4+2] = __xlx_real_op_20_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_real_op_20)[i*4+3] = __xlx_real_op_20_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_0
  sc_bv<32>*__xlx_imag_op_0_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_0];
  for (int i = 0; i < __xlx_size_param_imag_op_0; ++i) {
    __xlx_imag_op_0_output_buffer[i] = __xlx_imag_op_0__input_buffer[i+__xlx_offset_param_imag_op_0];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_0; ++i) {
    ((char*)__xlx_apatb_param_imag_op_0)[i*4+0] = __xlx_imag_op_0_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_0)[i*4+1] = __xlx_imag_op_0_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_0)[i*4+2] = __xlx_imag_op_0_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_0)[i*4+3] = __xlx_imag_op_0_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_1
  sc_bv<32>*__xlx_imag_op_1_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_1];
  for (int i = 0; i < __xlx_size_param_imag_op_1; ++i) {
    __xlx_imag_op_1_output_buffer[i] = __xlx_imag_op_1__input_buffer[i+__xlx_offset_param_imag_op_1];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_1; ++i) {
    ((char*)__xlx_apatb_param_imag_op_1)[i*4+0] = __xlx_imag_op_1_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_1)[i*4+1] = __xlx_imag_op_1_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_1)[i*4+2] = __xlx_imag_op_1_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_1)[i*4+3] = __xlx_imag_op_1_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_2
  sc_bv<32>*__xlx_imag_op_2_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_2];
  for (int i = 0; i < __xlx_size_param_imag_op_2; ++i) {
    __xlx_imag_op_2_output_buffer[i] = __xlx_imag_op_2__input_buffer[i+__xlx_offset_param_imag_op_2];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_2; ++i) {
    ((char*)__xlx_apatb_param_imag_op_2)[i*4+0] = __xlx_imag_op_2_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_2)[i*4+1] = __xlx_imag_op_2_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_2)[i*4+2] = __xlx_imag_op_2_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_2)[i*4+3] = __xlx_imag_op_2_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_3
  sc_bv<32>*__xlx_imag_op_3_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_3];
  for (int i = 0; i < __xlx_size_param_imag_op_3; ++i) {
    __xlx_imag_op_3_output_buffer[i] = __xlx_imag_op_3__input_buffer[i+__xlx_offset_param_imag_op_3];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_3; ++i) {
    ((char*)__xlx_apatb_param_imag_op_3)[i*4+0] = __xlx_imag_op_3_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_3)[i*4+1] = __xlx_imag_op_3_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_3)[i*4+2] = __xlx_imag_op_3_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_3)[i*4+3] = __xlx_imag_op_3_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_4
  sc_bv<32>*__xlx_imag_op_4_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_4];
  for (int i = 0; i < __xlx_size_param_imag_op_4; ++i) {
    __xlx_imag_op_4_output_buffer[i] = __xlx_imag_op_4__input_buffer[i+__xlx_offset_param_imag_op_4];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_4; ++i) {
    ((char*)__xlx_apatb_param_imag_op_4)[i*4+0] = __xlx_imag_op_4_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_4)[i*4+1] = __xlx_imag_op_4_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_4)[i*4+2] = __xlx_imag_op_4_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_4)[i*4+3] = __xlx_imag_op_4_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_5
  sc_bv<32>*__xlx_imag_op_5_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_5];
  for (int i = 0; i < __xlx_size_param_imag_op_5; ++i) {
    __xlx_imag_op_5_output_buffer[i] = __xlx_imag_op_5__input_buffer[i+__xlx_offset_param_imag_op_5];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_5; ++i) {
    ((char*)__xlx_apatb_param_imag_op_5)[i*4+0] = __xlx_imag_op_5_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_5)[i*4+1] = __xlx_imag_op_5_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_5)[i*4+2] = __xlx_imag_op_5_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_5)[i*4+3] = __xlx_imag_op_5_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_6
  sc_bv<32>*__xlx_imag_op_6_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_6];
  for (int i = 0; i < __xlx_size_param_imag_op_6; ++i) {
    __xlx_imag_op_6_output_buffer[i] = __xlx_imag_op_6__input_buffer[i+__xlx_offset_param_imag_op_6];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_6; ++i) {
    ((char*)__xlx_apatb_param_imag_op_6)[i*4+0] = __xlx_imag_op_6_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_6)[i*4+1] = __xlx_imag_op_6_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_6)[i*4+2] = __xlx_imag_op_6_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_6)[i*4+3] = __xlx_imag_op_6_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_7
  sc_bv<32>*__xlx_imag_op_7_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_7];
  for (int i = 0; i < __xlx_size_param_imag_op_7; ++i) {
    __xlx_imag_op_7_output_buffer[i] = __xlx_imag_op_7__input_buffer[i+__xlx_offset_param_imag_op_7];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_7; ++i) {
    ((char*)__xlx_apatb_param_imag_op_7)[i*4+0] = __xlx_imag_op_7_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_7)[i*4+1] = __xlx_imag_op_7_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_7)[i*4+2] = __xlx_imag_op_7_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_7)[i*4+3] = __xlx_imag_op_7_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_8
  sc_bv<32>*__xlx_imag_op_8_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_8];
  for (int i = 0; i < __xlx_size_param_imag_op_8; ++i) {
    __xlx_imag_op_8_output_buffer[i] = __xlx_imag_op_8__input_buffer[i+__xlx_offset_param_imag_op_8];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_8; ++i) {
    ((char*)__xlx_apatb_param_imag_op_8)[i*4+0] = __xlx_imag_op_8_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_8)[i*4+1] = __xlx_imag_op_8_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_8)[i*4+2] = __xlx_imag_op_8_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_8)[i*4+3] = __xlx_imag_op_8_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_9
  sc_bv<32>*__xlx_imag_op_9_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_9];
  for (int i = 0; i < __xlx_size_param_imag_op_9; ++i) {
    __xlx_imag_op_9_output_buffer[i] = __xlx_imag_op_9__input_buffer[i+__xlx_offset_param_imag_op_9];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_9; ++i) {
    ((char*)__xlx_apatb_param_imag_op_9)[i*4+0] = __xlx_imag_op_9_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_9)[i*4+1] = __xlx_imag_op_9_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_9)[i*4+2] = __xlx_imag_op_9_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_9)[i*4+3] = __xlx_imag_op_9_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_10
  sc_bv<32>*__xlx_imag_op_10_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_10];
  for (int i = 0; i < __xlx_size_param_imag_op_10; ++i) {
    __xlx_imag_op_10_output_buffer[i] = __xlx_imag_op_10__input_buffer[i+__xlx_offset_param_imag_op_10];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_10; ++i) {
    ((char*)__xlx_apatb_param_imag_op_10)[i*4+0] = __xlx_imag_op_10_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_10)[i*4+1] = __xlx_imag_op_10_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_10)[i*4+2] = __xlx_imag_op_10_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_10)[i*4+3] = __xlx_imag_op_10_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_11
  sc_bv<32>*__xlx_imag_op_11_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_11];
  for (int i = 0; i < __xlx_size_param_imag_op_11; ++i) {
    __xlx_imag_op_11_output_buffer[i] = __xlx_imag_op_11__input_buffer[i+__xlx_offset_param_imag_op_11];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_11; ++i) {
    ((char*)__xlx_apatb_param_imag_op_11)[i*4+0] = __xlx_imag_op_11_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_11)[i*4+1] = __xlx_imag_op_11_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_11)[i*4+2] = __xlx_imag_op_11_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_11)[i*4+3] = __xlx_imag_op_11_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_12
  sc_bv<32>*__xlx_imag_op_12_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_12];
  for (int i = 0; i < __xlx_size_param_imag_op_12; ++i) {
    __xlx_imag_op_12_output_buffer[i] = __xlx_imag_op_12__input_buffer[i+__xlx_offset_param_imag_op_12];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_12; ++i) {
    ((char*)__xlx_apatb_param_imag_op_12)[i*4+0] = __xlx_imag_op_12_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_12)[i*4+1] = __xlx_imag_op_12_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_12)[i*4+2] = __xlx_imag_op_12_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_12)[i*4+3] = __xlx_imag_op_12_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_13
  sc_bv<32>*__xlx_imag_op_13_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_13];
  for (int i = 0; i < __xlx_size_param_imag_op_13; ++i) {
    __xlx_imag_op_13_output_buffer[i] = __xlx_imag_op_13__input_buffer[i+__xlx_offset_param_imag_op_13];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_13; ++i) {
    ((char*)__xlx_apatb_param_imag_op_13)[i*4+0] = __xlx_imag_op_13_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_13)[i*4+1] = __xlx_imag_op_13_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_13)[i*4+2] = __xlx_imag_op_13_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_13)[i*4+3] = __xlx_imag_op_13_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_14
  sc_bv<32>*__xlx_imag_op_14_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_14];
  for (int i = 0; i < __xlx_size_param_imag_op_14; ++i) {
    __xlx_imag_op_14_output_buffer[i] = __xlx_imag_op_14__input_buffer[i+__xlx_offset_param_imag_op_14];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_14; ++i) {
    ((char*)__xlx_apatb_param_imag_op_14)[i*4+0] = __xlx_imag_op_14_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_14)[i*4+1] = __xlx_imag_op_14_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_14)[i*4+2] = __xlx_imag_op_14_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_14)[i*4+3] = __xlx_imag_op_14_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_15
  sc_bv<32>*__xlx_imag_op_15_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_15];
  for (int i = 0; i < __xlx_size_param_imag_op_15; ++i) {
    __xlx_imag_op_15_output_buffer[i] = __xlx_imag_op_15__input_buffer[i+__xlx_offset_param_imag_op_15];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_15; ++i) {
    ((char*)__xlx_apatb_param_imag_op_15)[i*4+0] = __xlx_imag_op_15_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_15)[i*4+1] = __xlx_imag_op_15_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_15)[i*4+2] = __xlx_imag_op_15_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_15)[i*4+3] = __xlx_imag_op_15_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_16
  sc_bv<32>*__xlx_imag_op_16_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_16];
  for (int i = 0; i < __xlx_size_param_imag_op_16; ++i) {
    __xlx_imag_op_16_output_buffer[i] = __xlx_imag_op_16__input_buffer[i+__xlx_offset_param_imag_op_16];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_16; ++i) {
    ((char*)__xlx_apatb_param_imag_op_16)[i*4+0] = __xlx_imag_op_16_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_16)[i*4+1] = __xlx_imag_op_16_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_16)[i*4+2] = __xlx_imag_op_16_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_16)[i*4+3] = __xlx_imag_op_16_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_17
  sc_bv<32>*__xlx_imag_op_17_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_17];
  for (int i = 0; i < __xlx_size_param_imag_op_17; ++i) {
    __xlx_imag_op_17_output_buffer[i] = __xlx_imag_op_17__input_buffer[i+__xlx_offset_param_imag_op_17];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_17; ++i) {
    ((char*)__xlx_apatb_param_imag_op_17)[i*4+0] = __xlx_imag_op_17_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_17)[i*4+1] = __xlx_imag_op_17_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_17)[i*4+2] = __xlx_imag_op_17_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_17)[i*4+3] = __xlx_imag_op_17_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_18
  sc_bv<32>*__xlx_imag_op_18_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_18];
  for (int i = 0; i < __xlx_size_param_imag_op_18; ++i) {
    __xlx_imag_op_18_output_buffer[i] = __xlx_imag_op_18__input_buffer[i+__xlx_offset_param_imag_op_18];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_18; ++i) {
    ((char*)__xlx_apatb_param_imag_op_18)[i*4+0] = __xlx_imag_op_18_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_18)[i*4+1] = __xlx_imag_op_18_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_18)[i*4+2] = __xlx_imag_op_18_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_18)[i*4+3] = __xlx_imag_op_18_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_19
  sc_bv<32>*__xlx_imag_op_19_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_19];
  for (int i = 0; i < __xlx_size_param_imag_op_19; ++i) {
    __xlx_imag_op_19_output_buffer[i] = __xlx_imag_op_19__input_buffer[i+__xlx_offset_param_imag_op_19];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_19; ++i) {
    ((char*)__xlx_apatb_param_imag_op_19)[i*4+0] = __xlx_imag_op_19_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_19)[i*4+1] = __xlx_imag_op_19_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_19)[i*4+2] = __xlx_imag_op_19_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_19)[i*4+3] = __xlx_imag_op_19_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_imag_op_20
  sc_bv<32>*__xlx_imag_op_20_output_buffer = new sc_bv<32>[__xlx_size_param_imag_op_20];
  for (int i = 0; i < __xlx_size_param_imag_op_20; ++i) {
    __xlx_imag_op_20_output_buffer[i] = __xlx_imag_op_20__input_buffer[i+__xlx_offset_param_imag_op_20];
  }
  for (int i = 0; i < __xlx_size_param_imag_op_20; ++i) {
    ((char*)__xlx_apatb_param_imag_op_20)[i*4+0] = __xlx_imag_op_20_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_imag_op_20)[i*4+1] = __xlx_imag_op_20_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_imag_op_20)[i*4+2] = __xlx_imag_op_20_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_imag_op_20)[i*4+3] = __xlx_imag_op_20_output_buffer[i].range(31, 24).to_uint();
  }
}
