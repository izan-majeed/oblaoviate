# ✨ Obloaviate — The Bloatware Remover ✨

**Obloaviate** is a magical shell script that helps you remove bloatware from your Android device using `adb`. It works by targeting device-specific lists of pre-installed apps and uninstalling them for the current user.

---

## ⚙️ How It Works

This script reads a list of bloatware package names from a device-specific text file (e.g., `devices/xiaomi.txt`) and removes them using the `adb shell pm uninstall -k --user 0` command.

Each device has its own "spell scroll" stored in the `devices/` folder — a plain text file listing package names safe to remove.

---

## 🚀 Usage

### Prerequisites

- ADB installed and added to your PATH.
- USB debugging enabled on your Android device.
- Your device connected to your computer and recognized by `adb`.

---

### 🪄 Run the Script

```bash
./obloaviate.sh <device_brand>
