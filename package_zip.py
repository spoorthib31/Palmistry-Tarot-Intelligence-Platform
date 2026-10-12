import os
import zipfile
from pathlib import Path

def create_project_zip():
    base_dir = Path(r"C:\Users\Spoorthi\.gemini\antigravity\scratch\palmistry-tarot-platform")
    zip_path = Path(r"C:\Users\Spoorthi\.gemini\antigravity\scratch\palmistry-tarot-platform.zip")
    
    # Exclude temporary or oversized node_modules caches
    exclude_dirs = {".pytest_cache", "__pycache__", ".git"}
    exclude_extensions = {".pyc", ".pyo"}
    
    print(f"Creating clean project zip at: {zip_path}")
    
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as zipf:
        for root, dirs, files in os.walk(base_dir):
            # Prune excluded directories
            dirs[:] = [d for d in dirs if d not in exclude_dirs]
            
            for file in files:
                ext = Path(file).suffix.lower()
                if ext in exclude_extensions:
                    continue
                    
                file_path = Path(root) / file
                rel_path = file_path.relative_to(base_dir)
                
                # Exclude node_modules inside frontend from the zip so it stays lightweight (npm install will install on run or user can run run.bat)
                if "node_modules" in rel_path.parts:
                    continue
                    
                zipf.write(file_path, arcname=str(rel_path))
                
    print(f"Successfully packaged {zip_path.stat().st_size / (1024*1024):.2f} MB to {zip_path}")

if __name__ == "__main__":
    create_project_zip()
