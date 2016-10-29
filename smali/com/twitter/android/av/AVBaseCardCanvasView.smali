.class public abstract Lcom/twitter/android/av/AVBaseCardCanvasView;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TButtonView:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/twitter/android/av/i;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/View;

.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTButtonView;"
        }
    .end annotation
.end field

.field protected final c:Landroid/widget/ProgressBar;

.field protected final d:Landroid/widget/ImageView;

.field protected e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

.field private f:Lcom/twitter/library/av/control/a;

.field private h:Z

.field private final i:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/av/AVBaseCardCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/twitter/android/av/AVBaseCardCanvasView;->setOrientation(I)V

    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-virtual {p0, p1}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a(Landroid/content/Context;)V

    .line 60
    const v0, 0x7f130176

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->b:Landroid/view/View;

    .line 61
    const v0, 0x7f130175

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->a:Landroid/view/View;

    .line 62
    const v0, 0x7f13017c

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->c:Landroid/widget/ProgressBar;

    .line 63
    const v0, 0x7f13017b

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 66
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->b:Landroid/view/View;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->a:Landroid/view/View;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->i:Ljava/lang/Iterable;

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Configuration;)Lbxa;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lbxa;->c:Lbxa;

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public a(IIZZ)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 150
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->f:Lcom/twitter/library/av/control/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->f:Lcom/twitter/library/av/control/a;

    iget-object v1, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayer;->B()Lcom/twitter/library/av/playback/bl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/control/a;->b(Lcom/twitter/library/av/playback/bl;)V

    .line 154
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 173
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public a(Lcom/twitter/library/av/ab;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->g()V

    .line 184
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->setKeepScreenOn(Z)V

    .line 186
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 89
    iput-object p1, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a()V

    .line 91
    new-instance v0, Lcom/twitter/library/av/control/a;

    iget-object v1, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/twitter/library/av/control/a;-><init>(Landroid/view/View;Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/control/b;)V

    iput-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->f:Lcom/twitter/library/av/control/a;

    .line 92
    invoke-virtual {p1, p0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Lcom/twitter/library/av/s;)Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 93
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->i()Lcom/twitter/library/av/playback/AVPlayerAttachment;

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->g()V

    .line 96
    invoke-virtual {p0, p2}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a(Landroid/content/res/Configuration;)Lbxa;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->b()Lbxa;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attachment playback mode does not match the expected mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->b()Lbxa;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/av/playback/bl;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->f:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0, p1}, Lcom/twitter/library/av/control/a;->a(Lcom/twitter/library/av/playback/bl;)V

    .line 239
    return-void
.end method

.method public a(Lcom/twitter/model/av/c;)V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 178
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
    .line 131
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->m()V

    .line 230
    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 137
    iput-boolean v1, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 140
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x2bd

    if-ne v0, p1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const/16 v0, 0x2be

    if-ne v0, p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->a()V

    .line 159
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 160
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    .line 165
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->setKeepScreenOn(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 168
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .prologue
    .line 304
    return-object p0
.end method

.method public getHideableViews()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->i:Ljava/lang/Iterable;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public h()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 197
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->b()V

    .line 200
    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->setKeepScreenOn(Z)V

    .line 219
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->n()V

    .line 270
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->m()V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    goto :goto_1
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->f:Lcom/twitter/library/av/control/a;

    invoke-virtual {v0}, Lcom/twitter/library/av/control/a;->a()V

    .line 276
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    .line 278
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->o()V

    .line 279
    return-void
.end method

.method protected o()V
    .locals 3

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->h:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0206c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a06e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->e:Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0206c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    const v1, 0x7f0206c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/twitter/android/av/AVBaseCardCanvasView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 252
    const v1, 0x7f13017b

    if-ne v1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/twitter/android/av/AVBaseCardCanvasView;->m()V

    .line 255
    :cond_0
    return-void
.end method

.method public setPartner(Lcom/twitter/model/av/Partner;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
