.class public Lcom/twitter/android/moments/ui/fullscreen/l;
.super Lcom/twitter/android/moments/ui/fullscreen/z;
.source "Twttr"


# instance fields
.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/content/res/Resources;Landroid/widget/ProgressBar;Lcom/twitter/model/moments/MomentPageDisplayMode;Ljava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/bs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ProgressBar;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Landroid/content/res/Resources;",
            "Landroid/widget/ProgressBar;",
            "Lcom/twitter/model/moments/MomentPageDisplayMode;",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p9}, Lcom/twitter/android/moments/ui/fullscreen/z;-><init>(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/content/res/Resources;Landroid/widget/ProgressBar;Lcom/twitter/model/moments/MomentPageDisplayMode;Ljava/lang/String;Lcom/twitter/android/moments/ui/fullscreen/bs;)V

    .line 26
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/l;->c:Landroid/widget/TextView;

    .line 27
    return-void
.end method


# virtual methods
.method a(Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/z;->a(Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;)V

    .line 32
    instance-of v0, p1, Lcom/twitter/android/moments/ui/fullscreen/k;

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/k;

    iget-object v0, p1, Lcom/twitter/android/moments/ui/fullscreen/k;->a:Lcom/twitter/android/moments/ui/fullscreen/af;

    .line 34
    sget-object v1, Lcom/twitter/android/av/audio/i;->a:Lcom/twitter/android/av/audio/i;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/af;->b:Lcom/twitter/android/av/audio/AudioCardError;

    invoke-interface {v1, v0}, Lcom/twitter/android/av/audio/i;->b(Lcom/twitter/android/av/audio/AudioCardError;)I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/l;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0553

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :cond_1
    return-void
.end method
