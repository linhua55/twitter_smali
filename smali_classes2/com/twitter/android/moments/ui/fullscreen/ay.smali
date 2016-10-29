.class Lcom/twitter/android/moments/ui/fullscreen/ay;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/i",
        "<",
        "Lazt",
        "<",
        "Lavh;",
        "Lcmf",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ax;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ay;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lazt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lazt",
            "<",
            "Lavh;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lazm;

    new-instance v1, Lcom/twitter/android/moments/data/t;

    new-instance v2, Lazn;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ay;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    .line 154
    invoke-static {v3}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/data/t;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lazm;-><init>(Lazt;)V

    .line 152
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/ay;->a()Lazt;

    move-result-object v0

    return-object v0
.end method
