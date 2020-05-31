# Table 1 Results
EMBEDDINGS="./muse_data/vectors"
DICTIONARIES="./muse_data/crosslingual/dictionaries"
echo "Table 1 Results"
echo "En-Es"
python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.vi.vec" -dtrain "$DICTIONARIES/en-vi.0-5000.txt" -dtest "$DICTIONARIES/en-vi.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e3 --max_vocab 200000 --normalize_eval
# echo "Es-En"
# python geomm.py "$EMBEDDINGS/wiki.vi.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/vi-en.0-5000.txt" -dtest "$DICTIONARIES/vi-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "En-Th"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.th.vec" -dtrain "$DICTIONARIES/en-th.0-5000.txt" -dtest "$DICTIONARIES/en-th.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "th-En"
# python geomm.py "$EMBEDDINGS/wiki.th.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/th-en.0-5000.txt" -dtest "$DICTIONARIES/th-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e3 --max_vocab 200000 --normalize_eval
# echo "En-ti"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.ti.vec" -dtrain "$DICTIONARIES/en-ti.0-5000.txt" -dtest "$DICTIONARIES/en-ti.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e3 --max_vocab 200000 --normalize_eval
# echo "ti-En"
# python geomm.py "$EMBEDDINGS/wiki.ti.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/ti-en.0-5000.txt" -dtest "$DICTIONARIES/ti-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "En-ms"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.ms.vec" -dtrain "$DICTIONARIES/en-ms.0-5000.txt" -dtest "$DICTIONARIES/en-ms.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e3 --max_vocab 200000 --normalize_eval
# echo "ms-En"
# python geomm.py "$EMBEDDINGS/wiki.ms.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/ms-en.0-5000.txt" -dtest "$DICTIONARIES/ms-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "En-af"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.af.vec" -dtrain "$DICTIONARIES/en-af.0-5000.txt" -dtest "$DICTIONARIES/en-af.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "af-En"
# python geomm.py "$EMBEDDINGS/wiki.af.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/af-en.0-5000.txt" -dtest "$DICTIONARIES/af-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "En-bs"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.bs.vec" -dtrain "$DICTIONARIES/en-bs.0-5000.txt" -dtest "$DICTIONARIES/en-bs.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "bs-En"
# python geomm.py "$EMBEDDINGS/wiki.bs.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/bs-en.0-5000.txt" -dtest "$DICTIONARIES/bs-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "En-bi"
# python geomm.py "$EMBEDDINGS/wiki.en.vec" "$EMBEDDINGS/wiki.bi.vec" -dtrain "$DICTIONARIES/en-bi.0-5000.txt" -dtest "$DICTIONARIES/en-bi.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
# echo "bi-En"
# python geomm.py "$EMBEDDINGS/wiki.bi.vec" "$EMBEDDINGS/wiki.en.vec" -dtrain "$DICTIONARIES/bi-en.0-5000.txt" -dtest "$DICTIONARIES/bi-en.5000-6500.txt" --normalize unit center  --max_opt_iter 150 --l2_reg 1e2 --max_vocab 200000 --normalize_eval
