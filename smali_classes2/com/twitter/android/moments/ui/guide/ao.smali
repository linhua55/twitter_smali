.class Lcom/twitter/android/moments/ui/guide/ao;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/ao;->b:Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/ao;->a:Landroid/app/Activity;

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
    .line 156
    new-instance v0, Lazm;

    new-instance v1, Lcom/twitter/android/moments/data/t;

    new-instance v2, Lazn;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/guide/ao;->a:Landroid/app/Activity;

    .line 158
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/data/t;-><init>(Lazt;)V

    invoke-direct {v0, v1}, Lazm;-><init>(Lazt;)V

    .line 156
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/ao;->a()Lazt;

    move-result-object v0

    return-object v0
.end method
