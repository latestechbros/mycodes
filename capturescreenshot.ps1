Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create a new bitmap object with the screen's width and height
$bitmap = New-Object System.Drawing.Bitmap([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width, [System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height)

# Create a graphics object from the bitmap
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)

# Capture the screen
$graphics.CopyFromScreen([System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Location, [System.Drawing.Point]::Empty, $bitmap.Size)

# Save the screenshot to a file (you can change the path and filename)
$bitmap.Save("C:\Users\Admin\Downloads\Screenshot\Screenshot.png", [System.Drawing.Imaging.ImageFormat]::Png)

# Dispose of the bitmap and graphics objects
$bitmap.Dispose()
$graphics.Dispose()
