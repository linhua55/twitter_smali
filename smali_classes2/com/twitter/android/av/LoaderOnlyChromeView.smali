.class public Lcom/twitter/android/av/LoaderOnlyChromeView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/control/h;


# instance fields
.field protected a:Lcom/twitter/android/av/be;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/av/LoaderOnlyChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Lcom/twitter/android/av/be;

    invoke-direct {v0}, Lcom/twitter/android/av/be;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->a:Lcom/twitter/android/av/be;

    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/library/av/ar;)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->n()V

    .line 144
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->n()V

    .line 77
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->b:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->b:Z

    .line 150
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->n()V

    .line 152
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/av/AVMedia;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public a_(Z)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->m()V

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->o()V

    .line 105
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public b_(Z)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->k()V

    .line 90
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->m()V

    .line 95
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 58
    return-object p0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->n()V

    .line 123
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->a:Lcom/twitter/android/av/be;

    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/twitter/android/av/be;->a(Landroid/view/ViewGroup;Landroid/content/Context;)Z

    .line 159
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->a:Lcom/twitter/android/av/be;

    invoke-virtual {v0, p0}, Lcom/twitter/android/av/be;->a(Landroid/view/ViewGroup;)Z

    .line 163
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->m()V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->setBackgroundColor(I)V

    .line 168
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->b:Z

    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/LoaderOnlyChromeView;->setBackgroundColor(I)V

    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/av/LoaderOnlyChromeView;->a:Lcom/twitter/android/av/be;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/be;->a(ZIIII)V

    .line 54
    return-void
.end method
