.class public interface abstract Lcom/android/server/wm/IStartingWindowManagerBridge;
.super Ljava/lang/Object;
.source "IStartingWindowManagerBridge.java"


# virtual methods
.method public abstract addCustomLayoutResId(Ljava/lang/String;II)V
.end method

.method public abstract addCustomStartingWinodwData(Ljava/lang/String;Landroid/os/Bundle;I)Ljava/lang/String;
.end method

.method public abstract getCustomStartingBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getKeyguardPreviewLayoutResId(Ljava/lang/String;)I
.end method

.method public abstract getStartingWindowLayoutResId(Ljava/lang/String;I)I
.end method

.method public abstract init(Landroid/content/Context;)Z
.end method

.method public abstract isCustomBitmapLoaded(Ljava/lang/String;)Z
.end method

.method public abstract removeCustomLayoutResId(Ljava/lang/String;I)V
.end method

.method public abstract setCustomBitmapLoaded(Ljava/lang/String;Z)Z
.end method

.method public abstract setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z
.end method
