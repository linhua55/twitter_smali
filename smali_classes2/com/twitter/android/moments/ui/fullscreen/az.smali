.class Lcom/twitter/android/moments/ui/fullscreen/az;
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
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ax;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ax;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/az;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

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
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lazm;

    new-instance v1, Lcom/twitter/android/moments/data/bi;

    new-instance v2, Lazn;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/az;->a:Lcom/twitter/android/moments/ui/fullscreen/ax;

    .line 192
    invoke-static {v3}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a(Lcom/twitter/android/moments/ui/fullscreen/ax;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/twitter/android/moments/data/a;

    invoke-direct {v3}, Lcom/twitter/android/moments/data/a;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/moments/data/bi;-><init>(Lazt;Lcmv;)V

    invoke-direct {v0, v1}, Lazm;-><init>(Lazt;)V

    .line 190
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/az;->a()Lazt;

    move-result-object v0

    return-object v0
.end method
