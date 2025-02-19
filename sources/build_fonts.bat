@echo off


fontmake -i -a -o ttf -m AcariSans.designspace
fontmake -i -a -o otf -m AcariSans.designspace
fontmake -a -o variable -m AcariSans.designspace
fontmake -i -a -o ttf -m AcariSans-Italic.designspace
fontmake -i -o otf -m AcariSans-Italic.designspace
fontmake -a -o variable -m AcariSans-Italic.designspace


python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Thin.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-ExtraLight.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Light.ttf
python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Regular.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Medium.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-SemiBold.ttf
python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Bold.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-ExtraBold.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Black.ttf
python fix-dsig.py .\autohinted\instance_ttf\AcariSans-ThinItalic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-ExtraLightItalic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-LightItalic.ttf
python fix-dsig.py .\autohinted\instance_ttf\AcariSans-Italic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-MediumItalic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-SemiBoldItalic.ttf
python fix-dsig.py .\autohinted\instance_ttf\AcariSans-BoldItalic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-ExtraBoldItalic.ttf | python fix-dsig.py .\autohinted\instance_ttf\AcariSans-BlackItalic.ttf
python fix-dsig.py .\instance_otf\AcariSans-Thin.otf | python fix-dsig.py .\instance_otf\AcariSans-ExtraLight.otf | python fix-dsig.py .\instance_otf\AcariSans-Light.otf
python fix-dsig.py .\instance_otf\AcariSans-Regular.otf | python fix-dsig.py .\instance_otf\AcariSans-Medium.otf | python fix-dsig.py .\instance_otf\AcariSans-SemiBold.otf
python fix-dsig.py .\instance_otf\AcariSans-Bold.otf | python fix-dsig.py .\instance_otf\AcariSans-ExtraBold.otf | python fix-dsig.py .\instance_otf\AcariSans-Black.otf
python fix-dsig.py .\instance_otf\AcariSans-ThinItalic.otf | python fix-dsig.py .\instance_otf\AcariSans-ExtraLightItalic.otf | python fix-dsig.py .\instance_otf\AcariSans-LightItalic.otf
python fix-dsig.py .\instance_otf\AcariSans-Italic.otf | python fix-dsig.py .\instance_otf\AcariSans-MediumItalic.otf | python fix-dsig.py .\instance_otf\AcariSans-SemiBoldItalic.otf
python fix-dsig.py .\instance_otf\AcariSans-BoldItalic.otf | python fix-dsig.py .\instance_otf\AcariSans-ExtraBoldItalic.otf | python fix-dsig.py .\instance_otf\AcariSans-BlackItalic.otf


python fix-dsig.py .\variable_ttf\AcariSans-VF.ttf | python fix-dsig.py .\variable_ttf\AcariSans-Italic-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\AcariSans-VF.ttf ..\fonts\vf\AcariSans[wght].ttf
move .\variable_ttf\AcariSans-Italic-VF.ttf ..\fonts\vf\AcariSans-Italic[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit