pdp-ip-check-powershell:
     file.managed:
          - name: c:\windows\temp\pdp-ip-check.ps1
          - source: salt://files/get-date.ps1

pdp-ip-check:
    cmd.run:
          - name: powershell c:\windows\temp\pdp-ip-check.ps1
          - runas: {{ pillar['username'] }}
          - password: {{ pillar['password'] }}
          - require:
               - file: PDP_IP-Check_powershell

#run with: salt hqdvitauto01 state.apply saltenv=win cis.pdp-ip-check
#run with: salt hqdvitauto01 state.apply cis.pdp-ip-check