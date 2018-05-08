common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - strace
      - vim

remove cmatrix:
  pkg.removed:
    - name: cmatrix