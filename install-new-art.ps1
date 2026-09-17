# Zelda DnD - install the new artwork into the GitHub repo
# Run this once from anywhere. It copies 41 pictures you already have in
# 'Images and Sources' into the repo's images folder, then unpacks the 19
# edited versions (feathered edges / backgrounds removed) from the zip.

$src  = "C:\Users\User\Documents\Zelda DnD\Images and Sources"
$dest = "C:\Users\User\Documents\GitHub\Zelda DnD\images"
$zip  = "C:\Users\User\Documents\GitHub\Zelda DnD\zelda-dnd-new-art.zip"

if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest | Out-Null }

$files = @(
  "1200px-AoI_Mineru_Artwork.png",
  "1200px-TPHD_Zant_Artwork.png",
  "1280px-Queen-Gohma-Artwork.png",
  "285px-TotK_Gibdo_Model.png",
  "320px-SS_Impa_Artwork.png",
  "396px-TMC_Link_Artwork_9.png",
  "439px-TotK_Black_Lizalfos_Model.png",
  "596px-TotK_Black_Hinox_Model.png",
  "649px-Ordon_Link.png",
  "659px-TotK_Ice_Chuchu_Model.png",
  "661px-TotK_Electric_Chuchu_Model.png",
  "750px-Link_Soldier_Set_-_HWAoC_key_art.png",
  "800px-Armos_Knight_TWW_artwork.png",
  "800px-OoT-KingDodongo-Artwork.png",
  "800px-Quill.png",
  "ALBW_Seres_Artwork.png",
  "ALttP_Book_of_Mudora_Artwork_2_upscaled.png",
  "AoI_Sonia_Artwork.png",
  "AoI_Warriors_Artwork.png",
  "BotW_Calamity_Ganon_Artwork.webp",
  "BotW_Master_Sword_Model.png",
  "CDvlxGu.png",
  "HWAoC_Monk_Maz_Koshia_Artwork.webp",
  "HWAoC_Sooga_Artwork.png",
  "HWAoC_Urbosa_Artwork.webp",
  "HWDE_Yuga_Artwork.webp",
  "Impa_Great_Sword.webp",
  "King_Rhoam_-_HWAoC.png",
  "MM_Deku_King_Artwork.png",
  "MM_Mikau_Artwork.png",
  "Revali_-_HWAoC_key_art.png",
  "Rhondson_-_TotK_Character_Profile_art.png",
  "Still_Ardi_image950w.png",
  "TLoZ_Series_Royal_Crest_Artwork.png",
  "TP_Morpheel_Render.png",
  "TWW_Laruto.png",
  "TotK_Paya_Artwork.png",
  "TotK_Phantom_Ganon_Model.png",
  "TotK_Stone_Talus_Model.png",
  "Zant_29_2.webp",
  "beamos.png"
)

$missing = @()
foreach ($f in $files) {
  $p = Join-Path $src $f
  if (Test-Path $p) { Copy-Item $p -Destination (Join-Path $dest $f) -Force }
  else { $missing += $f }
}
Write-Host "Copied $($files.Count - $missing.Count) of $($files.Count) source pictures."
if ($missing.Count -gt 0) { Write-Host "NOT FOUND:"; $missing | ForEach-Object { Write-Host "  $_" } }

if (Test-Path $zip) {
  Expand-Archive -Path $zip -DestinationPath $dest -Force
  Write-Host "Unpacked the 19 edited pictures."
} else {
  Write-Host "zelda-dnd-new-art.zip was not found next to the repo - skipped."
}

Write-Host ""
Write-Host "Done. Now commit and push:"
Write-Host "  cd 'C:\Users\User\Documents\GitHub\Zelda DnD'"
Write-Host "  git add -A"
Write-Host "  git commit -m \"Layout pass: new artwork\""
Write-Host "  git push"
