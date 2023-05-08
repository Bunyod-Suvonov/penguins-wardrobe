# Archinstall

Boot archiso from virtual machine, then:

```
passwod
```

```
ip a
```

Then, from the host:
```
ssh root@192.168.1.214
```
then

```
archinstall --config ~/.wardrobe/naked/arch/eggs_configuration.json --creds ~/.wardrobe/naked/arch/eggs_credentials.json --disk_layouts ~/.wardrobe/naked/arch/eggs_disk_layout.json
```