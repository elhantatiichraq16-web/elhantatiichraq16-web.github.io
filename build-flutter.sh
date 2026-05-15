#!/bin/bash
set -e

FLUTTER_VERSION="3.22.0"
FLUTTER_DIR="$HOME/flutter"

echo "==> Téléchargement de Flutter $FLUTTER_VERSION..."
curl -Lo flutter.tar.xz "https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
tar xf flutter.tar.xz -C "$HOME"
rm flutter.tar.xz

export PATH="$FLUTTER_DIR/bin:$PATH"

echo "==> Flutter version"
flutter --version

echo "==> Activation du support web"
flutter config --enable-web

echo "==> Installation des dépendances"
flutter pub get

echo "==> Build web release"
flutter build web --release --no-sound-null-safety 2>/dev/null || flutter build web --release

echo "==> Build terminé ✅"
