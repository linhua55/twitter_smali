.class Lcom/twitter/android/moments/ui/maker/de;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/twitter/android/moments/ui/maker/dt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/dc;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/dc;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/de;->a:Lcom/twitter/android/moments/ui/maker/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/twitter/android/moments/ui/maker/dt;
    .locals 2

    .prologue
    .line 135
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/de;->a:Lcom/twitter/android/moments/ui/maker/dc;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/dc;->b(Lcom/twitter/android/moments/ui/maker/dc;)Lcom/twitter/android/moments/ui/maker/t;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/de;->a:Lcom/twitter/android/moments/ui/maker/dc;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/dc;->a(Lcom/twitter/android/moments/ui/maker/dc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/moments/ui/maker/t;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/twitter/android/moments/ui/maker/s;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/de;->a(Landroid/graphics/Bitmap;)Lcom/twitter/android/moments/ui/maker/dt;

    move-result-object v0

    return-object v0
.end method
