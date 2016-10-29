.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/twitter/media/ui/image/MediaImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twitter/media/ui/image/MediaImageView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->a:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 30
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/l;
    .locals 3

    .prologue
    .line 22
    const v0, 0x7f0401c4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 23
    const v0, 0x7f1304a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 24
    new-instance v2, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;-><init>(Landroid/view/View;Lcom/twitter/media/ui/image/MediaImageView;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public a(Lcom/twitter/media/request/b;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->b:Lcom/twitter/media/ui/image/MediaImageView;

    sget-object v1, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 41
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->a:Landroid/view/View;

    return-object v0
.end method
