# My instructions for deploying sphinx documentation
## Instruction

```bash
make -j html
s3 syn
test blahblah
rsync -av --delete _build/html/ docs/
```