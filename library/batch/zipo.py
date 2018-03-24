import tarfile

def make_tarfile(output_filename, source_dir):
    with tarfile.open(output_filename, "w:gz") as tar:
        tar.add(source_dir, arcname=os.path.basename(source_dir))

# "w:bz2"

tar = tarfile.open("sample.tar.gz", "w:gz")
for name in ["file1", "file2", "file3"]:
    tar.add(name)
tar.close()
