#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_real_sample "../tv/cdatafile/c.dft.autotvin_real_sample.dat"
#define AUTOTB_TVOUT_real_sample "../tv/cdatafile/c.dft.autotvout_real_sample.dat"
#define AUTOTB_TVIN_imag_sample "../tv/cdatafile/c.dft.autotvin_imag_sample.dat"
#define AUTOTB_TVOUT_imag_sample "../tv/cdatafile/c.dft.autotvout_imag_sample.dat"
#define AUTOTB_TVIN_real_op_0 "../tv/cdatafile/c.dft.autotvin_real_op_0.dat"
#define AUTOTB_TVOUT_real_op_0 "../tv/cdatafile/c.dft.autotvout_real_op_0.dat"
#define AUTOTB_TVIN_real_op_1 "../tv/cdatafile/c.dft.autotvin_real_op_1.dat"
#define AUTOTB_TVOUT_real_op_1 "../tv/cdatafile/c.dft.autotvout_real_op_1.dat"
#define AUTOTB_TVIN_real_op_2 "../tv/cdatafile/c.dft.autotvin_real_op_2.dat"
#define AUTOTB_TVOUT_real_op_2 "../tv/cdatafile/c.dft.autotvout_real_op_2.dat"
#define AUTOTB_TVIN_real_op_3 "../tv/cdatafile/c.dft.autotvin_real_op_3.dat"
#define AUTOTB_TVOUT_real_op_3 "../tv/cdatafile/c.dft.autotvout_real_op_3.dat"
#define AUTOTB_TVIN_real_op_4 "../tv/cdatafile/c.dft.autotvin_real_op_4.dat"
#define AUTOTB_TVOUT_real_op_4 "../tv/cdatafile/c.dft.autotvout_real_op_4.dat"
#define AUTOTB_TVIN_real_op_5 "../tv/cdatafile/c.dft.autotvin_real_op_5.dat"
#define AUTOTB_TVOUT_real_op_5 "../tv/cdatafile/c.dft.autotvout_real_op_5.dat"
#define AUTOTB_TVIN_real_op_6 "../tv/cdatafile/c.dft.autotvin_real_op_6.dat"
#define AUTOTB_TVOUT_real_op_6 "../tv/cdatafile/c.dft.autotvout_real_op_6.dat"
#define AUTOTB_TVIN_real_op_7 "../tv/cdatafile/c.dft.autotvin_real_op_7.dat"
#define AUTOTB_TVOUT_real_op_7 "../tv/cdatafile/c.dft.autotvout_real_op_7.dat"
#define AUTOTB_TVIN_real_op_8 "../tv/cdatafile/c.dft.autotvin_real_op_8.dat"
#define AUTOTB_TVOUT_real_op_8 "../tv/cdatafile/c.dft.autotvout_real_op_8.dat"
#define AUTOTB_TVIN_real_op_9 "../tv/cdatafile/c.dft.autotvin_real_op_9.dat"
#define AUTOTB_TVOUT_real_op_9 "../tv/cdatafile/c.dft.autotvout_real_op_9.dat"
#define AUTOTB_TVIN_real_op_10 "../tv/cdatafile/c.dft.autotvin_real_op_10.dat"
#define AUTOTB_TVOUT_real_op_10 "../tv/cdatafile/c.dft.autotvout_real_op_10.dat"
#define AUTOTB_TVIN_real_op_11 "../tv/cdatafile/c.dft.autotvin_real_op_11.dat"
#define AUTOTB_TVOUT_real_op_11 "../tv/cdatafile/c.dft.autotvout_real_op_11.dat"
#define AUTOTB_TVIN_real_op_12 "../tv/cdatafile/c.dft.autotvin_real_op_12.dat"
#define AUTOTB_TVOUT_real_op_12 "../tv/cdatafile/c.dft.autotvout_real_op_12.dat"
#define AUTOTB_TVIN_real_op_13 "../tv/cdatafile/c.dft.autotvin_real_op_13.dat"
#define AUTOTB_TVOUT_real_op_13 "../tv/cdatafile/c.dft.autotvout_real_op_13.dat"
#define AUTOTB_TVIN_real_op_14 "../tv/cdatafile/c.dft.autotvin_real_op_14.dat"
#define AUTOTB_TVOUT_real_op_14 "../tv/cdatafile/c.dft.autotvout_real_op_14.dat"
#define AUTOTB_TVIN_real_op_15 "../tv/cdatafile/c.dft.autotvin_real_op_15.dat"
#define AUTOTB_TVOUT_real_op_15 "../tv/cdatafile/c.dft.autotvout_real_op_15.dat"
#define AUTOTB_TVIN_real_op_16 "../tv/cdatafile/c.dft.autotvin_real_op_16.dat"
#define AUTOTB_TVOUT_real_op_16 "../tv/cdatafile/c.dft.autotvout_real_op_16.dat"
#define AUTOTB_TVIN_real_op_17 "../tv/cdatafile/c.dft.autotvin_real_op_17.dat"
#define AUTOTB_TVOUT_real_op_17 "../tv/cdatafile/c.dft.autotvout_real_op_17.dat"
#define AUTOTB_TVIN_real_op_18 "../tv/cdatafile/c.dft.autotvin_real_op_18.dat"
#define AUTOTB_TVOUT_real_op_18 "../tv/cdatafile/c.dft.autotvout_real_op_18.dat"
#define AUTOTB_TVIN_real_op_19 "../tv/cdatafile/c.dft.autotvin_real_op_19.dat"
#define AUTOTB_TVOUT_real_op_19 "../tv/cdatafile/c.dft.autotvout_real_op_19.dat"
#define AUTOTB_TVIN_real_op_20 "../tv/cdatafile/c.dft.autotvin_real_op_20.dat"
#define AUTOTB_TVOUT_real_op_20 "../tv/cdatafile/c.dft.autotvout_real_op_20.dat"
#define AUTOTB_TVIN_imag_op_0 "../tv/cdatafile/c.dft.autotvin_imag_op_0.dat"
#define AUTOTB_TVOUT_imag_op_0 "../tv/cdatafile/c.dft.autotvout_imag_op_0.dat"
#define AUTOTB_TVIN_imag_op_1 "../tv/cdatafile/c.dft.autotvin_imag_op_1.dat"
#define AUTOTB_TVOUT_imag_op_1 "../tv/cdatafile/c.dft.autotvout_imag_op_1.dat"
#define AUTOTB_TVIN_imag_op_2 "../tv/cdatafile/c.dft.autotvin_imag_op_2.dat"
#define AUTOTB_TVOUT_imag_op_2 "../tv/cdatafile/c.dft.autotvout_imag_op_2.dat"
#define AUTOTB_TVIN_imag_op_3 "../tv/cdatafile/c.dft.autotvin_imag_op_3.dat"
#define AUTOTB_TVOUT_imag_op_3 "../tv/cdatafile/c.dft.autotvout_imag_op_3.dat"
#define AUTOTB_TVIN_imag_op_4 "../tv/cdatafile/c.dft.autotvin_imag_op_4.dat"
#define AUTOTB_TVOUT_imag_op_4 "../tv/cdatafile/c.dft.autotvout_imag_op_4.dat"
#define AUTOTB_TVIN_imag_op_5 "../tv/cdatafile/c.dft.autotvin_imag_op_5.dat"
#define AUTOTB_TVOUT_imag_op_5 "../tv/cdatafile/c.dft.autotvout_imag_op_5.dat"
#define AUTOTB_TVIN_imag_op_6 "../tv/cdatafile/c.dft.autotvin_imag_op_6.dat"
#define AUTOTB_TVOUT_imag_op_6 "../tv/cdatafile/c.dft.autotvout_imag_op_6.dat"
#define AUTOTB_TVIN_imag_op_7 "../tv/cdatafile/c.dft.autotvin_imag_op_7.dat"
#define AUTOTB_TVOUT_imag_op_7 "../tv/cdatafile/c.dft.autotvout_imag_op_7.dat"
#define AUTOTB_TVIN_imag_op_8 "../tv/cdatafile/c.dft.autotvin_imag_op_8.dat"
#define AUTOTB_TVOUT_imag_op_8 "../tv/cdatafile/c.dft.autotvout_imag_op_8.dat"
#define AUTOTB_TVIN_imag_op_9 "../tv/cdatafile/c.dft.autotvin_imag_op_9.dat"
#define AUTOTB_TVOUT_imag_op_9 "../tv/cdatafile/c.dft.autotvout_imag_op_9.dat"
#define AUTOTB_TVIN_imag_op_10 "../tv/cdatafile/c.dft.autotvin_imag_op_10.dat"
#define AUTOTB_TVOUT_imag_op_10 "../tv/cdatafile/c.dft.autotvout_imag_op_10.dat"
#define AUTOTB_TVIN_imag_op_11 "../tv/cdatafile/c.dft.autotvin_imag_op_11.dat"
#define AUTOTB_TVOUT_imag_op_11 "../tv/cdatafile/c.dft.autotvout_imag_op_11.dat"
#define AUTOTB_TVIN_imag_op_12 "../tv/cdatafile/c.dft.autotvin_imag_op_12.dat"
#define AUTOTB_TVOUT_imag_op_12 "../tv/cdatafile/c.dft.autotvout_imag_op_12.dat"
#define AUTOTB_TVIN_imag_op_13 "../tv/cdatafile/c.dft.autotvin_imag_op_13.dat"
#define AUTOTB_TVOUT_imag_op_13 "../tv/cdatafile/c.dft.autotvout_imag_op_13.dat"
#define AUTOTB_TVIN_imag_op_14 "../tv/cdatafile/c.dft.autotvin_imag_op_14.dat"
#define AUTOTB_TVOUT_imag_op_14 "../tv/cdatafile/c.dft.autotvout_imag_op_14.dat"
#define AUTOTB_TVIN_imag_op_15 "../tv/cdatafile/c.dft.autotvin_imag_op_15.dat"
#define AUTOTB_TVOUT_imag_op_15 "../tv/cdatafile/c.dft.autotvout_imag_op_15.dat"
#define AUTOTB_TVIN_imag_op_16 "../tv/cdatafile/c.dft.autotvin_imag_op_16.dat"
#define AUTOTB_TVOUT_imag_op_16 "../tv/cdatafile/c.dft.autotvout_imag_op_16.dat"
#define AUTOTB_TVIN_imag_op_17 "../tv/cdatafile/c.dft.autotvin_imag_op_17.dat"
#define AUTOTB_TVOUT_imag_op_17 "../tv/cdatafile/c.dft.autotvout_imag_op_17.dat"
#define AUTOTB_TVIN_imag_op_18 "../tv/cdatafile/c.dft.autotvin_imag_op_18.dat"
#define AUTOTB_TVOUT_imag_op_18 "../tv/cdatafile/c.dft.autotvout_imag_op_18.dat"
#define AUTOTB_TVIN_imag_op_19 "../tv/cdatafile/c.dft.autotvin_imag_op_19.dat"
#define AUTOTB_TVOUT_imag_op_19 "../tv/cdatafile/c.dft.autotvout_imag_op_19.dat"
#define AUTOTB_TVIN_imag_op_20 "../tv/cdatafile/c.dft.autotvin_imag_op_20.dat"
#define AUTOTB_TVOUT_imag_op_20 "../tv/cdatafile/c.dft.autotvout_imag_op_20.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_real_sample "../tv/rtldatafile/rtl.dft.autotvout_real_sample.dat"
#define AUTOTB_TVOUT_PC_imag_sample "../tv/rtldatafile/rtl.dft.autotvout_imag_sample.dat"
#define AUTOTB_TVOUT_PC_real_op_0 "../tv/rtldatafile/rtl.dft.autotvout_real_op_0.dat"
#define AUTOTB_TVOUT_PC_real_op_1 "../tv/rtldatafile/rtl.dft.autotvout_real_op_1.dat"
#define AUTOTB_TVOUT_PC_real_op_2 "../tv/rtldatafile/rtl.dft.autotvout_real_op_2.dat"
#define AUTOTB_TVOUT_PC_real_op_3 "../tv/rtldatafile/rtl.dft.autotvout_real_op_3.dat"
#define AUTOTB_TVOUT_PC_real_op_4 "../tv/rtldatafile/rtl.dft.autotvout_real_op_4.dat"
#define AUTOTB_TVOUT_PC_real_op_5 "../tv/rtldatafile/rtl.dft.autotvout_real_op_5.dat"
#define AUTOTB_TVOUT_PC_real_op_6 "../tv/rtldatafile/rtl.dft.autotvout_real_op_6.dat"
#define AUTOTB_TVOUT_PC_real_op_7 "../tv/rtldatafile/rtl.dft.autotvout_real_op_7.dat"
#define AUTOTB_TVOUT_PC_real_op_8 "../tv/rtldatafile/rtl.dft.autotvout_real_op_8.dat"
#define AUTOTB_TVOUT_PC_real_op_9 "../tv/rtldatafile/rtl.dft.autotvout_real_op_9.dat"
#define AUTOTB_TVOUT_PC_real_op_10 "../tv/rtldatafile/rtl.dft.autotvout_real_op_10.dat"
#define AUTOTB_TVOUT_PC_real_op_11 "../tv/rtldatafile/rtl.dft.autotvout_real_op_11.dat"
#define AUTOTB_TVOUT_PC_real_op_12 "../tv/rtldatafile/rtl.dft.autotvout_real_op_12.dat"
#define AUTOTB_TVOUT_PC_real_op_13 "../tv/rtldatafile/rtl.dft.autotvout_real_op_13.dat"
#define AUTOTB_TVOUT_PC_real_op_14 "../tv/rtldatafile/rtl.dft.autotvout_real_op_14.dat"
#define AUTOTB_TVOUT_PC_real_op_15 "../tv/rtldatafile/rtl.dft.autotvout_real_op_15.dat"
#define AUTOTB_TVOUT_PC_real_op_16 "../tv/rtldatafile/rtl.dft.autotvout_real_op_16.dat"
#define AUTOTB_TVOUT_PC_real_op_17 "../tv/rtldatafile/rtl.dft.autotvout_real_op_17.dat"
#define AUTOTB_TVOUT_PC_real_op_18 "../tv/rtldatafile/rtl.dft.autotvout_real_op_18.dat"
#define AUTOTB_TVOUT_PC_real_op_19 "../tv/rtldatafile/rtl.dft.autotvout_real_op_19.dat"
#define AUTOTB_TVOUT_PC_real_op_20 "../tv/rtldatafile/rtl.dft.autotvout_real_op_20.dat"
#define AUTOTB_TVOUT_PC_imag_op_0 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_0.dat"
#define AUTOTB_TVOUT_PC_imag_op_1 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_1.dat"
#define AUTOTB_TVOUT_PC_imag_op_2 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_2.dat"
#define AUTOTB_TVOUT_PC_imag_op_3 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_3.dat"
#define AUTOTB_TVOUT_PC_imag_op_4 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_4.dat"
#define AUTOTB_TVOUT_PC_imag_op_5 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_5.dat"
#define AUTOTB_TVOUT_PC_imag_op_6 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_6.dat"
#define AUTOTB_TVOUT_PC_imag_op_7 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_7.dat"
#define AUTOTB_TVOUT_PC_imag_op_8 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_8.dat"
#define AUTOTB_TVOUT_PC_imag_op_9 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_9.dat"
#define AUTOTB_TVOUT_PC_imag_op_10 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_10.dat"
#define AUTOTB_TVOUT_PC_imag_op_11 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_11.dat"
#define AUTOTB_TVOUT_PC_imag_op_12 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_12.dat"
#define AUTOTB_TVOUT_PC_imag_op_13 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_13.dat"
#define AUTOTB_TVOUT_PC_imag_op_14 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_14.dat"
#define AUTOTB_TVOUT_PC_imag_op_15 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_15.dat"
#define AUTOTB_TVOUT_PC_imag_op_16 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_16.dat"
#define AUTOTB_TVOUT_PC_imag_op_17 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_17.dat"
#define AUTOTB_TVOUT_PC_imag_op_18 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_18.dat"
#define AUTOTB_TVOUT_PC_imag_op_19 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_19.dat"
#define AUTOTB_TVOUT_PC_imag_op_20 "../tv/rtldatafile/rtl.dft.autotvout_imag_op_20.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  real_sample_depth = 0;
  imag_sample_depth = 0;
  real_op_0_depth = 0;
  real_op_1_depth = 0;
  real_op_2_depth = 0;
  real_op_3_depth = 0;
  real_op_4_depth = 0;
  real_op_5_depth = 0;
  real_op_6_depth = 0;
  real_op_7_depth = 0;
  real_op_8_depth = 0;
  real_op_9_depth = 0;
  real_op_10_depth = 0;
  real_op_11_depth = 0;
  real_op_12_depth = 0;
  real_op_13_depth = 0;
  real_op_14_depth = 0;
  real_op_15_depth = 0;
  real_op_16_depth = 0;
  real_op_17_depth = 0;
  real_op_18_depth = 0;
  real_op_19_depth = 0;
  real_op_20_depth = 0;
  imag_op_0_depth = 0;
  imag_op_1_depth = 0;
  imag_op_2_depth = 0;
  imag_op_3_depth = 0;
  imag_op_4_depth = 0;
  imag_op_5_depth = 0;
  imag_op_6_depth = 0;
  imag_op_7_depth = 0;
  imag_op_8_depth = 0;
  imag_op_9_depth = 0;
  imag_op_10_depth = 0;
  imag_op_11_depth = 0;
  imag_op_12_depth = 0;
  imag_op_13_depth = 0;
  imag_op_14_depth = 0;
  imag_op_15_depth = 0;
  imag_op_16_depth = 0;
  imag_op_17_depth = 0;
  imag_op_18_depth = 0;
  imag_op_19_depth = 0;
  imag_op_20_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{real_sample " << real_sample_depth << "}\n";
  total_list << "{imag_sample " << imag_sample_depth << "}\n";
  total_list << "{real_op_0 " << real_op_0_depth << "}\n";
  total_list << "{real_op_1 " << real_op_1_depth << "}\n";
  total_list << "{real_op_2 " << real_op_2_depth << "}\n";
  total_list << "{real_op_3 " << real_op_3_depth << "}\n";
  total_list << "{real_op_4 " << real_op_4_depth << "}\n";
  total_list << "{real_op_5 " << real_op_5_depth << "}\n";
  total_list << "{real_op_6 " << real_op_6_depth << "}\n";
  total_list << "{real_op_7 " << real_op_7_depth << "}\n";
  total_list << "{real_op_8 " << real_op_8_depth << "}\n";
  total_list << "{real_op_9 " << real_op_9_depth << "}\n";
  total_list << "{real_op_10 " << real_op_10_depth << "}\n";
  total_list << "{real_op_11 " << real_op_11_depth << "}\n";
  total_list << "{real_op_12 " << real_op_12_depth << "}\n";
  total_list << "{real_op_13 " << real_op_13_depth << "}\n";
  total_list << "{real_op_14 " << real_op_14_depth << "}\n";
  total_list << "{real_op_15 " << real_op_15_depth << "}\n";
  total_list << "{real_op_16 " << real_op_16_depth << "}\n";
  total_list << "{real_op_17 " << real_op_17_depth << "}\n";
  total_list << "{real_op_18 " << real_op_18_depth << "}\n";
  total_list << "{real_op_19 " << real_op_19_depth << "}\n";
  total_list << "{real_op_20 " << real_op_20_depth << "}\n";
  total_list << "{imag_op_0 " << imag_op_0_depth << "}\n";
  total_list << "{imag_op_1 " << imag_op_1_depth << "}\n";
  total_list << "{imag_op_2 " << imag_op_2_depth << "}\n";
  total_list << "{imag_op_3 " << imag_op_3_depth << "}\n";
  total_list << "{imag_op_4 " << imag_op_4_depth << "}\n";
  total_list << "{imag_op_5 " << imag_op_5_depth << "}\n";
  total_list << "{imag_op_6 " << imag_op_6_depth << "}\n";
  total_list << "{imag_op_7 " << imag_op_7_depth << "}\n";
  total_list << "{imag_op_8 " << imag_op_8_depth << "}\n";
  total_list << "{imag_op_9 " << imag_op_9_depth << "}\n";
  total_list << "{imag_op_10 " << imag_op_10_depth << "}\n";
  total_list << "{imag_op_11 " << imag_op_11_depth << "}\n";
  total_list << "{imag_op_12 " << imag_op_12_depth << "}\n";
  total_list << "{imag_op_13 " << imag_op_13_depth << "}\n";
  total_list << "{imag_op_14 " << imag_op_14_depth << "}\n";
  total_list << "{imag_op_15 " << imag_op_15_depth << "}\n";
  total_list << "{imag_op_16 " << imag_op_16_depth << "}\n";
  total_list << "{imag_op_17 " << imag_op_17_depth << "}\n";
  total_list << "{imag_op_18 " << imag_op_18_depth << "}\n";
  total_list << "{imag_op_19 " << imag_op_19_depth << "}\n";
  total_list << "{imag_op_20 " << imag_op_20_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int real_sample_depth;
    int imag_sample_depth;
    int real_op_0_depth;
    int real_op_1_depth;
    int real_op_2_depth;
    int real_op_3_depth;
    int real_op_4_depth;
    int real_op_5_depth;
    int real_op_6_depth;
    int real_op_7_depth;
    int real_op_8_depth;
    int real_op_9_depth;
    int real_op_10_depth;
    int real_op_11_depth;
    int real_op_12_depth;
    int real_op_13_depth;
    int real_op_14_depth;
    int real_op_15_depth;
    int real_op_16_depth;
    int real_op_17_depth;
    int real_op_18_depth;
    int real_op_19_depth;
    int real_op_20_depth;
    int imag_op_0_depth;
    int imag_op_1_depth;
    int imag_op_2_depth;
    int imag_op_3_depth;
    int imag_op_4_depth;
    int imag_op_5_depth;
    int imag_op_6_depth;
    int imag_op_7_depth;
    int imag_op_8_depth;
    int imag_op_9_depth;
    int imag_op_10_depth;
    int imag_op_11_depth;
    int imag_op_12_depth;
    int imag_op_13_depth;
    int imag_op_14_depth;
    int imag_op_15_depth;
    int imag_op_16_depth;
    int imag_op_17_depth;
    int imag_op_18_depth;
    int imag_op_19_depth;
    int imag_op_20_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void dft_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_dft_hw(volatile void * __xlx_apatb_param_real_sample, volatile void * __xlx_apatb_param_imag_sample, volatile void * __xlx_apatb_param_real_op_0, volatile void * __xlx_apatb_param_real_op_1, volatile void * __xlx_apatb_param_real_op_2, volatile void * __xlx_apatb_param_real_op_3, volatile void * __xlx_apatb_param_real_op_4, volatile void * __xlx_apatb_param_real_op_5, volatile void * __xlx_apatb_param_real_op_6, volatile void * __xlx_apatb_param_real_op_7, volatile void * __xlx_apatb_param_real_op_8, volatile void * __xlx_apatb_param_real_op_9, volatile void * __xlx_apatb_param_real_op_10, volatile void * __xlx_apatb_param_real_op_11, volatile void * __xlx_apatb_param_real_op_12, volatile void * __xlx_apatb_param_real_op_13, volatile void * __xlx_apatb_param_real_op_14, volatile void * __xlx_apatb_param_real_op_15, volatile void * __xlx_apatb_param_real_op_16, volatile void * __xlx_apatb_param_real_op_17, volatile void * __xlx_apatb_param_real_op_18, volatile void * __xlx_apatb_param_real_op_19, volatile void * __xlx_apatb_param_real_op_20, volatile void * __xlx_apatb_param_imag_op_0, volatile void * __xlx_apatb_param_imag_op_1, volatile void * __xlx_apatb_param_imag_op_2, volatile void * __xlx_apatb_param_imag_op_3, volatile void * __xlx_apatb_param_imag_op_4, volatile void * __xlx_apatb_param_imag_op_5, volatile void * __xlx_apatb_param_imag_op_6, volatile void * __xlx_apatb_param_imag_op_7, volatile void * __xlx_apatb_param_imag_op_8, volatile void * __xlx_apatb_param_imag_op_9, volatile void * __xlx_apatb_param_imag_op_10, volatile void * __xlx_apatb_param_imag_op_11, volatile void * __xlx_apatb_param_imag_op_12, volatile void * __xlx_apatb_param_imag_op_13, volatile void * __xlx_apatb_param_imag_op_14, volatile void * __xlx_apatb_param_imag_op_15, volatile void * __xlx_apatb_param_imag_op_16, volatile void * __xlx_apatb_param_imag_op_17, volatile void * __xlx_apatb_param_imag_op_18, volatile void * __xlx_apatb_param_imag_op_19, volatile void * __xlx_apatb_param_imag_op_20) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_0, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_0, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_0_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_0)[j*4+0] = real_op_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_0)[j*4+1] = real_op_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_0)[j*4+2] = real_op_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_0)[j*4+3] = real_op_0_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_1, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_1, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_1_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_1)[j*4+0] = real_op_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_1)[j*4+1] = real_op_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_1)[j*4+2] = real_op_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_1)[j*4+3] = real_op_1_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_2, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_2, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_2_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_2)[j*4+0] = real_op_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_2)[j*4+1] = real_op_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_2)[j*4+2] = real_op_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_2)[j*4+3] = real_op_2_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_3, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_3, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_3_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_3)[j*4+0] = real_op_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_3)[j*4+1] = real_op_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_3)[j*4+2] = real_op_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_3)[j*4+3] = real_op_3_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_4, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_4, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_4_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_4)[j*4+0] = real_op_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_4)[j*4+1] = real_op_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_4)[j*4+2] = real_op_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_4)[j*4+3] = real_op_4_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_5, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_5, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_5_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_5)[j*4+0] = real_op_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_5)[j*4+1] = real_op_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_5)[j*4+2] = real_op_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_5)[j*4+3] = real_op_5_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_6, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_6, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_6_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_6)[j*4+0] = real_op_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_6)[j*4+1] = real_op_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_6)[j*4+2] = real_op_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_6)[j*4+3] = real_op_6_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_7, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_7, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_7_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_7)[j*4+0] = real_op_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_7)[j*4+1] = real_op_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_7)[j*4+2] = real_op_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_7)[j*4+3] = real_op_7_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_8, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_8, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_8_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_8)[j*4+0] = real_op_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_8)[j*4+1] = real_op_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_8)[j*4+2] = real_op_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_8)[j*4+3] = real_op_8_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_9, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_9, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_9_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_9)[j*4+0] = real_op_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_9)[j*4+1] = real_op_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_9)[j*4+2] = real_op_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_9)[j*4+3] = real_op_9_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_10, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_10, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_10_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_10)[j*4+0] = real_op_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_10)[j*4+1] = real_op_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_10)[j*4+2] = real_op_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_10)[j*4+3] = real_op_10_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_11, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_11, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_11_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_11)[j*4+0] = real_op_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_11)[j*4+1] = real_op_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_11)[j*4+2] = real_op_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_11)[j*4+3] = real_op_11_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_12, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_12, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_12_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_12)[j*4+0] = real_op_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_12)[j*4+1] = real_op_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_12)[j*4+2] = real_op_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_12)[j*4+3] = real_op_12_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_13, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_13, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_13_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_13)[j*4+0] = real_op_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_13)[j*4+1] = real_op_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_13)[j*4+2] = real_op_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_13)[j*4+3] = real_op_13_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_14, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_14, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_14_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_14)[j*4+0] = real_op_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_14)[j*4+1] = real_op_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_14)[j*4+2] = real_op_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_14)[j*4+3] = real_op_14_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_15, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_15, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_15_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_15)[j*4+0] = real_op_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_15)[j*4+1] = real_op_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_15)[j*4+2] = real_op_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_15)[j*4+3] = real_op_15_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_16, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_16, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_16);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_16_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_16_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_16" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_16)[j*4+0] = real_op_16_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_16)[j*4+1] = real_op_16_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_16)[j*4+2] = real_op_16_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_16)[j*4+3] = real_op_16_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_17, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_17, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_17);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_17_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_17_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_17" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_17)[j*4+0] = real_op_17_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_17)[j*4+1] = real_op_17_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_17)[j*4+2] = real_op_17_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_17)[j*4+3] = real_op_17_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_18, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_18, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_18);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_18_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_18_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_18" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_18)[j*4+0] = real_op_18_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_18)[j*4+1] = real_op_18_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_18)[j*4+2] = real_op_18_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_18)[j*4+3] = real_op_18_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_19, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_19, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_19);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_19_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_19_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_19" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_19)[j*4+0] = real_op_19_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_19)[j*4+1] = real_op_19_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_19)[j*4+2] = real_op_19_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_19)[j*4+3] = real_op_19_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_real_op_20, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_real_op_20, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_real_op_20);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > real_op_20_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              real_op_20_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "real_op_20" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_real_op_20)[j*4+0] = real_op_20_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_real_op_20)[j*4+1] = real_op_20_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_real_op_20)[j*4+2] = real_op_20_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_real_op_20)[j*4+3] = real_op_20_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_0, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_0, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_0_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_0)[j*4+0] = imag_op_0_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_0)[j*4+1] = imag_op_0_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_0)[j*4+2] = imag_op_0_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_0)[j*4+3] = imag_op_0_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_1, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_1, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_1_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_1)[j*4+0] = imag_op_1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_1)[j*4+1] = imag_op_1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_1)[j*4+2] = imag_op_1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_1)[j*4+3] = imag_op_1_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_2, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_2, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_2_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_2)[j*4+0] = imag_op_2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_2)[j*4+1] = imag_op_2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_2)[j*4+2] = imag_op_2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_2)[j*4+3] = imag_op_2_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_3, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_3, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_3_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_3)[j*4+0] = imag_op_3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_3)[j*4+1] = imag_op_3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_3)[j*4+2] = imag_op_3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_3)[j*4+3] = imag_op_3_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_4, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_4, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_4_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_4)[j*4+0] = imag_op_4_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_4)[j*4+1] = imag_op_4_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_4)[j*4+2] = imag_op_4_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_4)[j*4+3] = imag_op_4_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_5, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_5, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_5_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_5)[j*4+0] = imag_op_5_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_5)[j*4+1] = imag_op_5_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_5)[j*4+2] = imag_op_5_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_5)[j*4+3] = imag_op_5_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_6, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_6, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_6_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_6)[j*4+0] = imag_op_6_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_6)[j*4+1] = imag_op_6_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_6)[j*4+2] = imag_op_6_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_6)[j*4+3] = imag_op_6_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_7, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_7, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_7_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_7)[j*4+0] = imag_op_7_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_7)[j*4+1] = imag_op_7_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_7)[j*4+2] = imag_op_7_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_7)[j*4+3] = imag_op_7_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_8, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_8, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_8);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_8_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_8_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_8)[j*4+0] = imag_op_8_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_8)[j*4+1] = imag_op_8_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_8)[j*4+2] = imag_op_8_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_8)[j*4+3] = imag_op_8_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_9, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_9, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_9);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_9_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_9_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_9)[j*4+0] = imag_op_9_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_9)[j*4+1] = imag_op_9_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_9)[j*4+2] = imag_op_9_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_9)[j*4+3] = imag_op_9_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_10, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_10, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_10);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_10_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_10_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_10" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_10)[j*4+0] = imag_op_10_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_10)[j*4+1] = imag_op_10_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_10)[j*4+2] = imag_op_10_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_10)[j*4+3] = imag_op_10_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_11, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_11, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_11);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_11_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_11_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_11" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_11)[j*4+0] = imag_op_11_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_11)[j*4+1] = imag_op_11_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_11)[j*4+2] = imag_op_11_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_11)[j*4+3] = imag_op_11_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_12, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_12, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_12);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_12_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_12_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_12" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_12)[j*4+0] = imag_op_12_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_12)[j*4+1] = imag_op_12_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_12)[j*4+2] = imag_op_12_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_12)[j*4+3] = imag_op_12_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_13, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_13, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_13);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_13_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_13_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_13" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_13)[j*4+0] = imag_op_13_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_13)[j*4+1] = imag_op_13_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_13)[j*4+2] = imag_op_13_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_13)[j*4+3] = imag_op_13_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_14, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_14, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_14);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_14_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_14_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_14" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_14)[j*4+0] = imag_op_14_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_14)[j*4+1] = imag_op_14_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_14)[j*4+2] = imag_op_14_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_14)[j*4+3] = imag_op_14_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_15, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_15, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_15);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_15_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_15_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_15" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_15)[j*4+0] = imag_op_15_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_15)[j*4+1] = imag_op_15_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_15)[j*4+2] = imag_op_15_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_15)[j*4+3] = imag_op_15_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_16, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_16, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_16);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_16_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_16_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_16" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_16)[j*4+0] = imag_op_16_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_16)[j*4+1] = imag_op_16_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_16)[j*4+2] = imag_op_16_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_16)[j*4+3] = imag_op_16_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_17, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_17, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_17);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_17_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_17_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_17" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_17)[j*4+0] = imag_op_17_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_17)[j*4+1] = imag_op_17_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_17)[j*4+2] = imag_op_17_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_17)[j*4+3] = imag_op_17_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_18, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_18, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_18);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_18_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_18_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_18" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_18)[j*4+0] = imag_op_18_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_18)[j*4+1] = imag_op_18_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_18)[j*4+2] = imag_op_18_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_18)[j*4+3] = imag_op_18_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_19, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_19, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_19);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_19_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_19_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_19" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_19)[j*4+0] = imag_op_19_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_19)[j*4+1] = imag_op_19_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_19)[j*4+2] = imag_op_19_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_19)[j*4+3] = imag_op_19_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(49);
aesl_fh.read(AUTOTB_TVOUT_PC_imag_op_20, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<4>((char*)__xlx_apatb_param_imag_op_20, 49);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_imag_op_20);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > imag_op_20_pc_buffer(49);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              imag_op_20_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "imag_op_20" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 49; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_imag_op_20)[j*4+0] = imag_op_20_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_imag_op_20)[j*4+1] = imag_op_20_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_imag_op_20)[j*4+2] = imag_op_20_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_imag_op_20)[j*4+3] = imag_op_20_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_real_sample = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_sample, 'b');
transaction<32> tr(1024);
  __xlx_offset_byte_param_real_sample = 0*4;
  if (__xlx_apatb_param_real_sample) {
tr.import<4>((char*)__xlx_apatb_param_real_sample, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_sample, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.real_sample_depth);
#else
// print real_sample Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_sample, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_sample = 0*4;
if (__xlx_apatb_param_real_sample) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_sample + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_sample, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.real_sample_depth);
aesl_fh.write(AUTOTB_TVIN_real_sample, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_sample = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_sample, 'b');
transaction<32> tr(1024);
  __xlx_offset_byte_param_imag_sample = 0*4;
  if (__xlx_apatb_param_imag_sample) {
tr.import<4>((char*)__xlx_apatb_param_imag_sample, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_sample, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.imag_sample_depth);
#else
// print imag_sample Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_sample, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_sample = 0*4;
if (__xlx_apatb_param_imag_sample) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_sample + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_sample, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.imag_sample_depth);
aesl_fh.write(AUTOTB_TVIN_imag_sample, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_0, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_0 = 0*4;
  if (__xlx_apatb_param_real_op_0) {
tr.import<4>((char*)__xlx_apatb_param_real_op_0, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_0_depth);
#else
// print real_op_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_0 = 0*4;
if (__xlx_apatb_param_real_op_0) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_0, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_0_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_1, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_1 = 0*4;
  if (__xlx_apatb_param_real_op_1) {
tr.import<4>((char*)__xlx_apatb_param_real_op_1, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_1_depth);
#else
// print real_op_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_1 = 0*4;
if (__xlx_apatb_param_real_op_1) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_1, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_1_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_2, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_2 = 0*4;
  if (__xlx_apatb_param_real_op_2) {
tr.import<4>((char*)__xlx_apatb_param_real_op_2, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_2_depth);
#else
// print real_op_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_2 = 0*4;
if (__xlx_apatb_param_real_op_2) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_2, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_2_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_3, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_3 = 0*4;
  if (__xlx_apatb_param_real_op_3) {
tr.import<4>((char*)__xlx_apatb_param_real_op_3, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_3_depth);
#else
// print real_op_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_3 = 0*4;
if (__xlx_apatb_param_real_op_3) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_3, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_3_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_4, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_4 = 0*4;
  if (__xlx_apatb_param_real_op_4) {
tr.import<4>((char*)__xlx_apatb_param_real_op_4, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_4_depth);
#else
// print real_op_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_4 = 0*4;
if (__xlx_apatb_param_real_op_4) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_4, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_4_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_5, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_5 = 0*4;
  if (__xlx_apatb_param_real_op_5) {
tr.import<4>((char*)__xlx_apatb_param_real_op_5, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_5_depth);
#else
// print real_op_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_5 = 0*4;
if (__xlx_apatb_param_real_op_5) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_5, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_5_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_6, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_6 = 0*4;
  if (__xlx_apatb_param_real_op_6) {
tr.import<4>((char*)__xlx_apatb_param_real_op_6, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_6_depth);
#else
// print real_op_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_6 = 0*4;
if (__xlx_apatb_param_real_op_6) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_6, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_6_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_7, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_7 = 0*4;
  if (__xlx_apatb_param_real_op_7) {
tr.import<4>((char*)__xlx_apatb_param_real_op_7, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_7_depth);
#else
// print real_op_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_7 = 0*4;
if (__xlx_apatb_param_real_op_7) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_7, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_7_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_8, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_8 = 0*4;
  if (__xlx_apatb_param_real_op_8) {
tr.import<4>((char*)__xlx_apatb_param_real_op_8, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_8_depth);
#else
// print real_op_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_8 = 0*4;
if (__xlx_apatb_param_real_op_8) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_8, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_8_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_9, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_9 = 0*4;
  if (__xlx_apatb_param_real_op_9) {
tr.import<4>((char*)__xlx_apatb_param_real_op_9, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_9_depth);
#else
// print real_op_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_9 = 0*4;
if (__xlx_apatb_param_real_op_9) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_9, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_9_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_10, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_10 = 0*4;
  if (__xlx_apatb_param_real_op_10) {
tr.import<4>((char*)__xlx_apatb_param_real_op_10, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_10_depth);
#else
// print real_op_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_10 = 0*4;
if (__xlx_apatb_param_real_op_10) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_10, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_10_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_11, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_11 = 0*4;
  if (__xlx_apatb_param_real_op_11) {
tr.import<4>((char*)__xlx_apatb_param_real_op_11, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_11_depth);
#else
// print real_op_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_11 = 0*4;
if (__xlx_apatb_param_real_op_11) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_11, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_11_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_12, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_12 = 0*4;
  if (__xlx_apatb_param_real_op_12) {
tr.import<4>((char*)__xlx_apatb_param_real_op_12, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_12_depth);
#else
// print real_op_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_12 = 0*4;
if (__xlx_apatb_param_real_op_12) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_12, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_12_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_13, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_13 = 0*4;
  if (__xlx_apatb_param_real_op_13) {
tr.import<4>((char*)__xlx_apatb_param_real_op_13, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_13_depth);
#else
// print real_op_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_13 = 0*4;
if (__xlx_apatb_param_real_op_13) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_13, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_13_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_14, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_14 = 0*4;
  if (__xlx_apatb_param_real_op_14) {
tr.import<4>((char*)__xlx_apatb_param_real_op_14, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_14_depth);
#else
// print real_op_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_14 = 0*4;
if (__xlx_apatb_param_real_op_14) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_14, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_14_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_15, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_15 = 0*4;
  if (__xlx_apatb_param_real_op_15) {
tr.import<4>((char*)__xlx_apatb_param_real_op_15, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_15_depth);
#else
// print real_op_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_15 = 0*4;
if (__xlx_apatb_param_real_op_15) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_15, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_15_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_16 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_16, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_16 = 0*4;
  if (__xlx_apatb_param_real_op_16) {
tr.import<4>((char*)__xlx_apatb_param_real_op_16, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_16, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_16_depth);
#else
// print real_op_16 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_16, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_16 = 0*4;
if (__xlx_apatb_param_real_op_16) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_16 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_16, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_16_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_16, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_17 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_17, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_17 = 0*4;
  if (__xlx_apatb_param_real_op_17) {
tr.import<4>((char*)__xlx_apatb_param_real_op_17, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_17, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_17_depth);
#else
// print real_op_17 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_17, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_17 = 0*4;
if (__xlx_apatb_param_real_op_17) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_17 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_17, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_17_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_17, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_18 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_18, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_18 = 0*4;
  if (__xlx_apatb_param_real_op_18) {
tr.import<4>((char*)__xlx_apatb_param_real_op_18, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_18, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_18_depth);
#else
// print real_op_18 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_18, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_18 = 0*4;
if (__xlx_apatb_param_real_op_18) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_18 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_18, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_18_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_18, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_19 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_19, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_19 = 0*4;
  if (__xlx_apatb_param_real_op_19) {
tr.import<4>((char*)__xlx_apatb_param_real_op_19, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_19, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_19_depth);
#else
// print real_op_19 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_19, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_19 = 0*4;
if (__xlx_apatb_param_real_op_19) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_19 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_19, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_19_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_19, end_str());
}

#endif
unsigned __xlx_offset_byte_param_real_op_20 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_real_op_20, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_20 = 0*4;
  if (__xlx_apatb_param_real_op_20) {
tr.import<4>((char*)__xlx_apatb_param_real_op_20, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_real_op_20, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_20_depth);
#else
// print real_op_20 Transactions
{
aesl_fh.write(AUTOTB_TVIN_real_op_20, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_20 = 0*4;
if (__xlx_apatb_param_real_op_20) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_20 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_real_op_20, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_20_depth);
aesl_fh.write(AUTOTB_TVIN_real_op_20, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_0 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_0, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_0 = 0*4;
  if (__xlx_apatb_param_imag_op_0) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_0, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_0_depth);
#else
// print imag_op_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_0 = 0*4;
if (__xlx_apatb_param_imag_op_0) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_0, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_0_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_0, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_1, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_1 = 0*4;
  if (__xlx_apatb_param_imag_op_1) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_1, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_1_depth);
#else
// print imag_op_1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_1 = 0*4;
if (__xlx_apatb_param_imag_op_1) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_1, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_1_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_2, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_2 = 0*4;
  if (__xlx_apatb_param_imag_op_2) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_2, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_2_depth);
#else
// print imag_op_2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_2 = 0*4;
if (__xlx_apatb_param_imag_op_2) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_2, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_2_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_3, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_3 = 0*4;
  if (__xlx_apatb_param_imag_op_3) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_3, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_3_depth);
#else
// print imag_op_3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_3 = 0*4;
if (__xlx_apatb_param_imag_op_3) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_3, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_3_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_4, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_4 = 0*4;
  if (__xlx_apatb_param_imag_op_4) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_4, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_4_depth);
#else
// print imag_op_4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_4 = 0*4;
if (__xlx_apatb_param_imag_op_4) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_4, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_4_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_5, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_5 = 0*4;
  if (__xlx_apatb_param_imag_op_5) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_5, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_5_depth);
#else
// print imag_op_5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_5 = 0*4;
if (__xlx_apatb_param_imag_op_5) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_5, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_5_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_6, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_6 = 0*4;
  if (__xlx_apatb_param_imag_op_6) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_6, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_6_depth);
#else
// print imag_op_6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_6 = 0*4;
if (__xlx_apatb_param_imag_op_6) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_6, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_6_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_7, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_7 = 0*4;
  if (__xlx_apatb_param_imag_op_7) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_7, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_7_depth);
#else
// print imag_op_7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_7 = 0*4;
if (__xlx_apatb_param_imag_op_7) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_7, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_7_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_8, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_8 = 0*4;
  if (__xlx_apatb_param_imag_op_8) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_8, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_8_depth);
#else
// print imag_op_8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_8 = 0*4;
if (__xlx_apatb_param_imag_op_8) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_8, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_8_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_9 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_9, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_9 = 0*4;
  if (__xlx_apatb_param_imag_op_9) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_9, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_9_depth);
#else
// print imag_op_9 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_9 = 0*4;
if (__xlx_apatb_param_imag_op_9) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_9, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_9_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_9, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_10 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_10, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_10 = 0*4;
  if (__xlx_apatb_param_imag_op_10) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_10, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_10_depth);
#else
// print imag_op_10 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_10 = 0*4;
if (__xlx_apatb_param_imag_op_10) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_10, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_10_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_10, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_11 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_11, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_11 = 0*4;
  if (__xlx_apatb_param_imag_op_11) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_11, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_11_depth);
#else
// print imag_op_11 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_11 = 0*4;
if (__xlx_apatb_param_imag_op_11) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_11, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_11_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_11, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_12 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_12, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_12 = 0*4;
  if (__xlx_apatb_param_imag_op_12) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_12, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_12_depth);
#else
// print imag_op_12 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_12 = 0*4;
if (__xlx_apatb_param_imag_op_12) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_12, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_12_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_12, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_13 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_13, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_13 = 0*4;
  if (__xlx_apatb_param_imag_op_13) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_13, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_13_depth);
#else
// print imag_op_13 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_13 = 0*4;
if (__xlx_apatb_param_imag_op_13) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_13, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_13_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_13, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_14 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_14, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_14 = 0*4;
  if (__xlx_apatb_param_imag_op_14) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_14, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_14_depth);
#else
// print imag_op_14 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_14 = 0*4;
if (__xlx_apatb_param_imag_op_14) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_14, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_14_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_14, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_15 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_15, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_15 = 0*4;
  if (__xlx_apatb_param_imag_op_15) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_15, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_15_depth);
#else
// print imag_op_15 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_15 = 0*4;
if (__xlx_apatb_param_imag_op_15) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_15, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_15_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_15, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_16 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_16, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_16 = 0*4;
  if (__xlx_apatb_param_imag_op_16) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_16, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_16, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_16_depth);
#else
// print imag_op_16 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_16, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_16 = 0*4;
if (__xlx_apatb_param_imag_op_16) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_16 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_16, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_16_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_16, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_17 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_17, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_17 = 0*4;
  if (__xlx_apatb_param_imag_op_17) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_17, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_17, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_17_depth);
#else
// print imag_op_17 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_17, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_17 = 0*4;
if (__xlx_apatb_param_imag_op_17) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_17 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_17, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_17_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_17, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_18 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_18, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_18 = 0*4;
  if (__xlx_apatb_param_imag_op_18) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_18, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_18, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_18_depth);
#else
// print imag_op_18 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_18, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_18 = 0*4;
if (__xlx_apatb_param_imag_op_18) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_18 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_18, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_18_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_18, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_19 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_19, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_19 = 0*4;
  if (__xlx_apatb_param_imag_op_19) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_19, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_19, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_19_depth);
#else
// print imag_op_19 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_19, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_19 = 0*4;
if (__xlx_apatb_param_imag_op_19) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_19 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_19, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_19_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_19, end_str());
}

#endif
unsigned __xlx_offset_byte_param_imag_op_20 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_imag_op_20, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_20 = 0*4;
  if (__xlx_apatb_param_imag_op_20) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_20, 49, 0);
  }
aesl_fh.write(AUTOTB_TVIN_imag_op_20, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_20_depth);
#else
// print imag_op_20 Transactions
{
aesl_fh.write(AUTOTB_TVIN_imag_op_20, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_20 = 0*4;
if (__xlx_apatb_param_imag_op_20) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_20 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_imag_op_20, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_20_depth);
aesl_fh.write(AUTOTB_TVIN_imag_op_20, end_str());
}

#endif
CodeState = CALL_C_DUT;
dft_hw_stub_wrapper(__xlx_apatb_param_real_sample, __xlx_apatb_param_imag_sample, __xlx_apatb_param_real_op_0, __xlx_apatb_param_real_op_1, __xlx_apatb_param_real_op_2, __xlx_apatb_param_real_op_3, __xlx_apatb_param_real_op_4, __xlx_apatb_param_real_op_5, __xlx_apatb_param_real_op_6, __xlx_apatb_param_real_op_7, __xlx_apatb_param_real_op_8, __xlx_apatb_param_real_op_9, __xlx_apatb_param_real_op_10, __xlx_apatb_param_real_op_11, __xlx_apatb_param_real_op_12, __xlx_apatb_param_real_op_13, __xlx_apatb_param_real_op_14, __xlx_apatb_param_real_op_15, __xlx_apatb_param_real_op_16, __xlx_apatb_param_real_op_17, __xlx_apatb_param_real_op_18, __xlx_apatb_param_real_op_19, __xlx_apatb_param_real_op_20, __xlx_apatb_param_imag_op_0, __xlx_apatb_param_imag_op_1, __xlx_apatb_param_imag_op_2, __xlx_apatb_param_imag_op_3, __xlx_apatb_param_imag_op_4, __xlx_apatb_param_imag_op_5, __xlx_apatb_param_imag_op_6, __xlx_apatb_param_imag_op_7, __xlx_apatb_param_imag_op_8, __xlx_apatb_param_imag_op_9, __xlx_apatb_param_imag_op_10, __xlx_apatb_param_imag_op_11, __xlx_apatb_param_imag_op_12, __xlx_apatb_param_imag_op_13, __xlx_apatb_param_imag_op_14, __xlx_apatb_param_imag_op_15, __xlx_apatb_param_imag_op_16, __xlx_apatb_param_imag_op_17, __xlx_apatb_param_imag_op_18, __xlx_apatb_param_imag_op_19, __xlx_apatb_param_imag_op_20);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_0, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_0 = 0*4;
  if (__xlx_apatb_param_real_op_0) {
tr.import<4>((char*)__xlx_apatb_param_real_op_0, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_0_depth);
#else
// print real_op_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_0 = 0*4;
if (__xlx_apatb_param_real_op_0) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_0, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_0_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_1, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_1 = 0*4;
  if (__xlx_apatb_param_real_op_1) {
tr.import<4>((char*)__xlx_apatb_param_real_op_1, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_1_depth);
#else
// print real_op_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_1 = 0*4;
if (__xlx_apatb_param_real_op_1) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_1, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_1_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_2, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_2 = 0*4;
  if (__xlx_apatb_param_real_op_2) {
tr.import<4>((char*)__xlx_apatb_param_real_op_2, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_2_depth);
#else
// print real_op_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_2 = 0*4;
if (__xlx_apatb_param_real_op_2) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_2, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_2_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_3, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_3 = 0*4;
  if (__xlx_apatb_param_real_op_3) {
tr.import<4>((char*)__xlx_apatb_param_real_op_3, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_3_depth);
#else
// print real_op_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_3 = 0*4;
if (__xlx_apatb_param_real_op_3) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_3, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_3_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_4, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_4 = 0*4;
  if (__xlx_apatb_param_real_op_4) {
tr.import<4>((char*)__xlx_apatb_param_real_op_4, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_4_depth);
#else
// print real_op_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_4 = 0*4;
if (__xlx_apatb_param_real_op_4) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_4, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_4_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_5, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_5 = 0*4;
  if (__xlx_apatb_param_real_op_5) {
tr.import<4>((char*)__xlx_apatb_param_real_op_5, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_5_depth);
#else
// print real_op_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_5 = 0*4;
if (__xlx_apatb_param_real_op_5) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_5, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_5_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_6, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_6 = 0*4;
  if (__xlx_apatb_param_real_op_6) {
tr.import<4>((char*)__xlx_apatb_param_real_op_6, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_6_depth);
#else
// print real_op_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_6 = 0*4;
if (__xlx_apatb_param_real_op_6) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_6, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_6_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_7, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_7 = 0*4;
  if (__xlx_apatb_param_real_op_7) {
tr.import<4>((char*)__xlx_apatb_param_real_op_7, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_7_depth);
#else
// print real_op_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_7 = 0*4;
if (__xlx_apatb_param_real_op_7) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_7, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_7_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_8, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_8 = 0*4;
  if (__xlx_apatb_param_real_op_8) {
tr.import<4>((char*)__xlx_apatb_param_real_op_8, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_8_depth);
#else
// print real_op_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_8 = 0*4;
if (__xlx_apatb_param_real_op_8) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_8, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_8_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_9, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_9 = 0*4;
  if (__xlx_apatb_param_real_op_9) {
tr.import<4>((char*)__xlx_apatb_param_real_op_9, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_9_depth);
#else
// print real_op_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_9 = 0*4;
if (__xlx_apatb_param_real_op_9) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_9, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_9_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_10, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_10 = 0*4;
  if (__xlx_apatb_param_real_op_10) {
tr.import<4>((char*)__xlx_apatb_param_real_op_10, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_10_depth);
#else
// print real_op_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_10 = 0*4;
if (__xlx_apatb_param_real_op_10) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_10, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_10_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_11, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_11 = 0*4;
  if (__xlx_apatb_param_real_op_11) {
tr.import<4>((char*)__xlx_apatb_param_real_op_11, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_11_depth);
#else
// print real_op_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_11 = 0*4;
if (__xlx_apatb_param_real_op_11) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_11, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_11_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_12, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_12 = 0*4;
  if (__xlx_apatb_param_real_op_12) {
tr.import<4>((char*)__xlx_apatb_param_real_op_12, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_12_depth);
#else
// print real_op_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_12 = 0*4;
if (__xlx_apatb_param_real_op_12) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_12, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_12_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_13, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_13 = 0*4;
  if (__xlx_apatb_param_real_op_13) {
tr.import<4>((char*)__xlx_apatb_param_real_op_13, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_13_depth);
#else
// print real_op_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_13 = 0*4;
if (__xlx_apatb_param_real_op_13) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_13, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_13_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_14, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_14 = 0*4;
  if (__xlx_apatb_param_real_op_14) {
tr.import<4>((char*)__xlx_apatb_param_real_op_14, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_14_depth);
#else
// print real_op_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_14 = 0*4;
if (__xlx_apatb_param_real_op_14) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_14, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_14_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_15, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_15 = 0*4;
  if (__xlx_apatb_param_real_op_15) {
tr.import<4>((char*)__xlx_apatb_param_real_op_15, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_15_depth);
#else
// print real_op_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_15 = 0*4;
if (__xlx_apatb_param_real_op_15) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_15, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_15_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_15, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_16, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_16 = 0*4;
  if (__xlx_apatb_param_real_op_16) {
tr.import<4>((char*)__xlx_apatb_param_real_op_16, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_16, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_16_depth);
#else
// print real_op_16 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_16, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_16 = 0*4;
if (__xlx_apatb_param_real_op_16) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_16 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_16, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_16_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_16, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_17, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_17 = 0*4;
  if (__xlx_apatb_param_real_op_17) {
tr.import<4>((char*)__xlx_apatb_param_real_op_17, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_17, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_17_depth);
#else
// print real_op_17 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_17, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_17 = 0*4;
if (__xlx_apatb_param_real_op_17) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_17 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_17, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_17_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_17, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_18, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_18 = 0*4;
  if (__xlx_apatb_param_real_op_18) {
tr.import<4>((char*)__xlx_apatb_param_real_op_18, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_18, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_18_depth);
#else
// print real_op_18 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_18, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_18 = 0*4;
if (__xlx_apatb_param_real_op_18) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_18 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_18, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_18_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_18, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_19, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_19 = 0*4;
  if (__xlx_apatb_param_real_op_19) {
tr.import<4>((char*)__xlx_apatb_param_real_op_19, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_19, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_19_depth);
#else
// print real_op_19 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_19, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_19 = 0*4;
if (__xlx_apatb_param_real_op_19) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_19 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_19, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_19_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_19, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_real_op_20, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_real_op_20 = 0*4;
  if (__xlx_apatb_param_real_op_20) {
tr.import<4>((char*)__xlx_apatb_param_real_op_20, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_real_op_20, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.real_op_20_depth);
#else
// print real_op_20 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_real_op_20, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_real_op_20 = 0*4;
if (__xlx_apatb_param_real_op_20) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_real_op_20 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_real_op_20, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.real_op_20_depth);
aesl_fh.write(AUTOTB_TVOUT_real_op_20, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_0, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_0 = 0*4;
  if (__xlx_apatb_param_imag_op_0) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_0, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_0, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_0_depth);
#else
// print imag_op_0 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_0, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_0 = 0*4;
if (__xlx_apatb_param_imag_op_0) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_0 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_0, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_0_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_0, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_1, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_1 = 0*4;
  if (__xlx_apatb_param_imag_op_1) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_1, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_1, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_1_depth);
#else
// print imag_op_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_1 = 0*4;
if (__xlx_apatb_param_imag_op_1) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_1 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_1, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_1_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_2, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_2 = 0*4;
  if (__xlx_apatb_param_imag_op_2) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_2, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_2, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_2_depth);
#else
// print imag_op_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_2 = 0*4;
if (__xlx_apatb_param_imag_op_2) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_2 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_2, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_2_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_3, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_3 = 0*4;
  if (__xlx_apatb_param_imag_op_3) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_3, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_3, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_3_depth);
#else
// print imag_op_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_3 = 0*4;
if (__xlx_apatb_param_imag_op_3) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_3 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_3, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_3_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_4, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_4 = 0*4;
  if (__xlx_apatb_param_imag_op_4) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_4, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_4, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_4_depth);
#else
// print imag_op_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_4 = 0*4;
if (__xlx_apatb_param_imag_op_4) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_4 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_4, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_4_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_4, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_5, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_5 = 0*4;
  if (__xlx_apatb_param_imag_op_5) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_5, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_5, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_5_depth);
#else
// print imag_op_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_5 = 0*4;
if (__xlx_apatb_param_imag_op_5) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_5 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_5, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_5_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_5, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_6, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_6 = 0*4;
  if (__xlx_apatb_param_imag_op_6) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_6, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_6, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_6_depth);
#else
// print imag_op_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_6 = 0*4;
if (__xlx_apatb_param_imag_op_6) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_6 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_6, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_6_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_6, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_7, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_7 = 0*4;
  if (__xlx_apatb_param_imag_op_7) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_7, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_7, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_7_depth);
#else
// print imag_op_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_7 = 0*4;
if (__xlx_apatb_param_imag_op_7) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_7 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_7, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_7_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_7, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_8, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_8 = 0*4;
  if (__xlx_apatb_param_imag_op_8) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_8, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_8, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_8_depth);
#else
// print imag_op_8 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_8 = 0*4;
if (__xlx_apatb_param_imag_op_8) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_8 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_8, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_8_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_8, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_9, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_9 = 0*4;
  if (__xlx_apatb_param_imag_op_9) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_9, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_9, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_9_depth);
#else
// print imag_op_9 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_9, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_9 = 0*4;
if (__xlx_apatb_param_imag_op_9) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_9 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_9, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_9_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_9, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_10, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_10 = 0*4;
  if (__xlx_apatb_param_imag_op_10) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_10, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_10, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_10_depth);
#else
// print imag_op_10 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_10, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_10 = 0*4;
if (__xlx_apatb_param_imag_op_10) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_10 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_10, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_10_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_10, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_11, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_11 = 0*4;
  if (__xlx_apatb_param_imag_op_11) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_11, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_11, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_11_depth);
#else
// print imag_op_11 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_11, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_11 = 0*4;
if (__xlx_apatb_param_imag_op_11) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_11 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_11, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_11_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_11, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_12, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_12 = 0*4;
  if (__xlx_apatb_param_imag_op_12) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_12, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_12, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_12_depth);
#else
// print imag_op_12 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_12, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_12 = 0*4;
if (__xlx_apatb_param_imag_op_12) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_12 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_12, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_12_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_12, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_13, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_13 = 0*4;
  if (__xlx_apatb_param_imag_op_13) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_13, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_13, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_13_depth);
#else
// print imag_op_13 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_13, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_13 = 0*4;
if (__xlx_apatb_param_imag_op_13) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_13 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_13, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_13_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_13, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_14, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_14 = 0*4;
  if (__xlx_apatb_param_imag_op_14) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_14, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_14, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_14_depth);
#else
// print imag_op_14 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_14, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_14 = 0*4;
if (__xlx_apatb_param_imag_op_14) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_14 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_14, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_14_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_14, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_15, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_15 = 0*4;
  if (__xlx_apatb_param_imag_op_15) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_15, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_15, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_15_depth);
#else
// print imag_op_15 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_15, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_15 = 0*4;
if (__xlx_apatb_param_imag_op_15) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_15 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_15, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_15_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_15, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_16, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_16 = 0*4;
  if (__xlx_apatb_param_imag_op_16) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_16, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_16, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_16_depth);
#else
// print imag_op_16 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_16, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_16 = 0*4;
if (__xlx_apatb_param_imag_op_16) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_16 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_16, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_16_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_16, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_17, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_17 = 0*4;
  if (__xlx_apatb_param_imag_op_17) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_17, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_17, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_17_depth);
#else
// print imag_op_17 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_17, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_17 = 0*4;
if (__xlx_apatb_param_imag_op_17) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_17 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_17, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_17_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_17, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_18, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_18 = 0*4;
  if (__xlx_apatb_param_imag_op_18) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_18, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_18, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_18_depth);
#else
// print imag_op_18 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_18, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_18 = 0*4;
if (__xlx_apatb_param_imag_op_18) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_18 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_18, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_18_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_18, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_19, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_19 = 0*4;
  if (__xlx_apatb_param_imag_op_19) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_19, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_19, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_19_depth);
#else
// print imag_op_19 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_19, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_19 = 0*4;
if (__xlx_apatb_param_imag_op_19) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_19 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_19, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_19_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_19, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_imag_op_20, 'b');
transaction<32> tr(49);
  __xlx_offset_byte_param_imag_op_20 = 0*4;
  if (__xlx_apatb_param_imag_op_20) {
tr.import<4>((char*)__xlx_apatb_param_imag_op_20, 49, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_imag_op_20, tr.p, tr.tbytes);
}

  tcl_file.set_num(49, &tcl_file.imag_op_20_depth);
#else
// print imag_op_20 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_imag_op_20, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_imag_op_20 = 0*4;
if (__xlx_apatb_param_imag_op_20) {
for (size_t i = 0; i < 49; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_imag_op_20 + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_imag_op_20, s);
}
}
}

  tcl_file.set_num(49, &tcl_file.imag_op_20_depth);
aesl_fh.write(AUTOTB_TVOUT_imag_op_20, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
