<project xmlns="com.autoesl.autopilot.project" top="dft" name="DFT">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../out.gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../dft_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="DFT/dft.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="DFT/dft.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="DFT/coefficients1024.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="baseline" status="inactive"/>
        <solution name="opt1_pipeline" status="inactive"/>
        <solution name="opt2_unroll" status="active"/>
    </solutions>
</project>

