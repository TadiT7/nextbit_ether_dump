# fihtdc, DanielYJHsieh, 20141205, add for FQC audio loopback
# For FQC audio loopback
#weihung [NBQ-787]:Modify selinux for the audio selftest of FQC

fqcaudio=`getprop debug.sys.fqcaudio`
case $fqcaudio in
    "11")
            tinymix 'DEC7 MUX'  'DMIC1'
            tinymix 'DEC7 Volume' 95
            tinymix 'IIR1 INP1 MUX' 'DEC7'
            tinymix 'RX1 MIX1 INP1' 'IIR1'
            tinymix 'RX2 MIX1 INP1' 'IIR1'
            tinymix 'CLASS_H_DSM MUX' 'DSM_HPHL_RX1'
            tinymix 'HPHL DAC Switch' 1
            tinymix 'COMP1 Switch' 1
            tinymix 'RX1 Digital Volume' 95
            tinymix 'RX2 Digital Volume' 95
    ;;
    "10")
            tinymix 'DEC7 MUX'  'ZERO'
            tinymix 'DEC7 Volume' 84
            tinymix 'IIR1 INP1 MUX' 'ZERO'
            tinymix 'RX1 MIX1 INP1' 'ZERO'
            tinymix 'RX2 MIX1 INP1' 'ZERO'
            tinymix 'CLASS_H_DSM MUX' 'ZERO'
            tinymix 'HPHL DAC Switch' 0
            tinymix 'COMP1 Switch' 0
            tinymix 'RX1 Digital Volume' 84
            tinymix 'RX2 Digital Volume' 84
    ;;
    "21")
            tinymix 'DEC10 MUX' 'DMIC3'
            tinymix 'DEC10 Volume' 95
            tinymix 'IIR1 INP1 MUX' 'DEC10'
            tinymix 'RX1 MIX1 INP1' 'IIR1'
            tinymix 'RX2 MIX1 INP1' 'IIR1'
            tinymix 'CLASS_H_DSM MUX' 'DSM_HPHL_RX1'
            tinymix 'HPHL DAC Switch' 1
            tinymix 'COMP1 Switch' 1
            tinymix 'RX1 Digital Volume' 95
            tinymix 'RX2 Digital Volume' 95
    ;;
    "20")
            tinymix 'DEC10 MUX'  'ZERO'
            tinymix 'DEC10 Volume' 84
            tinymix 'IIR1 INP1 MUX' 'ZERO'
            tinymix 'RX1 MIX1 INP1' 'ZERO'
            tinymix 'RX2 MIX1 INP1' 'ZERO'
            tinymix 'CLASS_H_DSM MUX' 'ZERO'
            tinymix 'HPHL DAC Switch' 0
            tinymix 'COMP1 Switch' 0
            tinymix 'RX1 Digital Volume' 84
            tinymix 'RX2 Digital Volume' 84
    ;;
    "31")
            tinymix 'DEC5 MUX'  'ADC2'
            tinymix 'ADC2 Volume' 10
            tinymix 'DEC5 Volume' 95
            tinymix 'IIR1 INP1 MUX' 'DEC5'
            tinymix 'RX1 MIX1 INP1' 'IIR1'
            tinymix 'RX2 MIX1 INP1' 'IIR1'
            tinymix 'CLASS_H_DSM MUX' 'DSM_HPHL_RX1'
            tinymix 'HPHL DAC Switch' 1
            tinymix 'COMP1 Switch' 1
            tinymix 'RX1 Digital Volume' 95
            tinymix 'RX2 Digital Volume' 95
    ;;
    "30")
            tinymix 'DEC5 MUX'  'ZERO'
            tinymix 'ADC2 Volume' 84
            tinymix 'DEC5 Volume' 84
            tinymix 'IIR1 INP1 MUX' 'ZERO'
            tinymix 'RX1 MIX1 INP1' 'ZERO'
            tinymix 'RX2 MIX1 INP1' 'ZERO'
            tinymix 'CLASS_H_DSM MUX' 'ZERO'
            tinymix 'HPHL DAC Switch' 0
            tinymix 'COMP1 Switch' 0
            tinymix 'RX1 Digital Volume' 84
            tinymix 'RX2 Digital Volume' 84
    ;;
    *)
            setprop debug.sys.fqcaudio 0
    ;; #Do nothing
esac