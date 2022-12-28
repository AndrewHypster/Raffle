@set @x=0 /*;
@echo off
call :CDROM Eject
call :CDROM Insert
Exit /B
 
:CDROM [option]
  cscript.exe //nologo //e:jscript "%~f0" "%~0,5"
Exit /B
 
*/try {
  var WMP = new ActiveXObject('WMPlayer.OCX.7');
  var arCD = WMP.cdromCollection;
  for (var i = 0; i < arCD.Count; i++) {
    arCD.item(i).Eject();
    if (WScript.Arguments(0) == 'Insert') arCD.item(i).Eject();
  }
} catch (e) { }