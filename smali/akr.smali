.class public Lakr;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lrx/w",
            "<",
            "Landroid/support/v7/graphics/Palette;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
