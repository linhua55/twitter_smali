.class public Lcom/twitter/android/timeline/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/timeline/bx;
.implements Lcom/twitter/app/common/inject/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/timeline/bx;",
        "Lcom/twitter/app/common/inject/n",
        "<",
        "Lcom/twitter/android/timeline/NewTweetsBannerState;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/twitter/android/widget/NewItemBannerView;

.field private final c:Lcom/twitter/android/timeline/by;

.field private final d:Lcom/twitter/android/widget/cw;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/twitter/model/timeline/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twitter/android/timeline/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_saved_state_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/timeline/e;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/twitter/android/widget/NewItemBannerView;Lcom/twitter/android/timeline/by;Lcom/twitter/android/timeline/NewTweetsBannerState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/twitter/android/timeline/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/timeline/h;-><init>(Lcom/twitter/android/timeline/e;Lcom/twitter/android/timeline/f;)V

    iput-object v0, p0, Lcom/twitter/android/timeline/e;->d:Lcom/twitter/android/widget/cw;

    .line 54
    new-instance v0, Lcom/twitter/android/timeline/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/f;-><init>(Lcom/twitter/android/timeline/e;)V

    iput-object v0, p0, Lcom/twitter/android/timeline/e;->e:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/twitter/android/timeline/g;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/g;-><init>(Lcom/twitter/android/timeline/e;)V

    iput-object v0, p0, Lcom/twitter/android/timeline/e;->f:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    .line 79
    iput-object p2, p0, Lcom/twitter/android/timeline/e;->c:Lcom/twitter/android/timeline/by;

    .line 81
    if-eqz p3, :cond_0

    .line 82
    iget-boolean v0, p3, Lcom/twitter/android/timeline/NewTweetsBannerState;->a:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->g:Z

    .line 83
    iget-object v0, p3, Lcom/twitter/android/timeline/NewTweetsBannerState;->b:Lcom/twitter/model/timeline/br;

    iput-object v0, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    .line 84
    iget-boolean v0, p3, Lcom/twitter/android/timeline/NewTweetsBannerState;->c:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->i:Z

    .line 85
    iget-boolean v0, p3, Lcom/twitter/android/timeline/NewTweetsBannerState;->d:Z

    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->j:Z

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/twitter/android/timeline/e;->g:Z

    .line 88
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/timeline/e;->a(Landroid/content/res/Resources;)Lcom/twitter/model/timeline/br;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    .line 89
    iput-boolean v2, p0, Lcom/twitter/android/timeline/e;->i:Z

    .line 90
    iput-boolean v2, p0, Lcom/twitter/android/timeline/e;->j:Z

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->c:Lcom/twitter/android/timeline/by;

    invoke-interface {v0}, Lcom/twitter/android/timeline/by;->P()V

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/timeline/e;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/android/timeline/e;->v()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/timeline/e;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/twitter/android/timeline/e;->i:Z

    return p1
.end method

.method private a(Lcom/twitter/model/timeline/br;Z)Z
    .locals 4

    .prologue
    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/model/timeline/br;->b:Lcom/twitter/model/timeline/NotificationType;

    sget-object v1, Lcom/twitter/model/timeline/NotificationType;->b:Lcom/twitter/model/timeline/NotificationType;

    if-ne v0, v1, :cond_0

    .line 234
    iput-boolean p2, p0, Lcom/twitter/android/timeline/e;->g:Z

    .line 235
    iput-object p1, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    .line 236
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-wide v2, p1, Lcom/twitter/model/timeline/br;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/widget/NewItemBannerView;->setMinDelaySinceLastDisplayed(J)V

    .line 237
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p1, Lcom/twitter/model/timeline/br;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setText(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->c:Lcom/twitter/android/timeline/by;

    invoke-interface {v0}, Lcom/twitter/android/timeline/by;->ad_()V

    .line 249
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    iget-wide v2, v2, Lcom/twitter/model/timeline/br;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/widget/NewItemBannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;)Lcom/twitter/model/timeline/br;
    .locals 8

    .prologue
    .line 259
    new-instance v1, Lcom/twitter/model/timeline/br;

    sget-object v2, Lcom/twitter/model/timeline/NotificationType;->b:Lcom/twitter/model/timeline/NotificationType;

    const v0, 0x7f0a0590

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x3a980

    const-wide/16 v6, 0xbb8

    invoke-direct/range {v1 .. v7}, Lcom/twitter/model/timeline/br;-><init>(Lcom/twitter/model/timeline/NotificationType;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/twitter/android/widget/NewItemBannerView;->a(IIII)V

    .line 176
    return-void
.end method

.method public a(IZLcom/twitter/model/timeline/br;)V
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    if-lez p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/twitter/android/timeline/e;->a(Lcom/twitter/model/timeline/br;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->p()Z

    .line 167
    :cond_0
    return-void

    .line 159
    :cond_1
    if-eqz p2, :cond_2

    .line 160
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/timeline/e;->a(Landroid/content/res/Resources;)Lcom/twitter/model/timeline/br;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    goto :goto_0
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->o()Lcom/twitter/android/timeline/NewTweetsBannerState;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/twitter/android/timeline/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->d:Lcom/twitter/android/widget/cw;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setDisplayListener(Lcom/twitter/android/widget/cw;)V

    .line 98
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    iget-boolean v1, p0, Lcom/twitter/android/timeline/e;->g:Z

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/timeline/e;->a(Lcom/twitter/model/timeline/br;Z)Z

    .line 100
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setVisibility(I)V

    .line 102
    invoke-direct {p0}, Lcom/twitter/android/timeline/e;->v()V

    .line 104
    :cond_0
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/twitter/android/timeline/e;->i:Z

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/NewItemBannerView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->s()Z

    .line 123
    invoke-direct {p0}, Lcom/twitter/android/timeline/e;->u()V

    .line 124
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->j:Z

    .line 129
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->g:Z

    .line 134
    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->j:Z

    .line 135
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->j:Z

    .line 140
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method n()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/twitter/android/timeline/NewTweetsBannerState;
    .locals 5

    .prologue
    .line 187
    new-instance v0, Lcom/twitter/android/timeline/NewTweetsBannerState;

    iget-boolean v1, p0, Lcom/twitter/android/timeline/e;->g:Z

    iget-object v2, p0, Lcom/twitter/android/timeline/e;->k:Lcom/twitter/model/timeline/br;

    iget-boolean v3, p0, Lcom/twitter/android/timeline/e;->i:Z

    iget-boolean v4, p0, Lcom/twitter/android/timeline/e;->j:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/timeline/NewTweetsBannerState;-><init>(ZLcom/twitter/model/timeline/br;ZZ)V

    return-object v0
.end method

.method p()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/twitter/android/timeline/e;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-boolean v1, p0, Lcom/twitter/android/timeline/e;->h:Z

    if-eqz v1, :cond_2

    .line 199
    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->h:Z

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/twitter/android/timeline/e;->j:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/twitter/android/timeline/e;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/NewItemBannerView;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 205
    :cond_3
    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/twitter/android/timeline/e;->a()V

    goto :goto_0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected r()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->c:Lcom/twitter/android/timeline/by;

    invoke-interface {v0}, Lcom/twitter/android/timeline/by;->Q()V

    .line 217
    return-void
.end method

.method s()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->b()Z

    move-result v0

    return v0
.end method

.method t()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/android/timeline/e;->b:Lcom/twitter/android/widget/NewItemBannerView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/timeline/e;->h:Z

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
