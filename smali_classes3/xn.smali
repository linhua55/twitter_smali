.class public Lxn;
.super Lxu;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/media/ui/image/MediaImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lxu;-><init>(Landroid/view/View;)V

    .line 69
    const v0, 0x7f1301a2

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lxn;->a:Lcom/twitter/media/ui/image/MediaImageView;

    .line 71
    return-void
.end method

.method static synthetic a(Lxn;)Lcom/twitter/media/ui/image/MediaImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lxn;->a:Lcom/twitter/media/ui/image/MediaImageView;

    return-object v0
.end method
