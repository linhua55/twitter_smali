.class public Lcom/twitter/android/moments/ui/fullscreen/ei;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/sn;

.field private final c:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lahd;

.field private final e:Lcom/twitter/library/util/FriendshipCache;

.field private final f:Lcom/twitter/android/moments/ui/fullscreen/a;

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/aq;

.field private final h:Lcom/twitter/android/moments/ui/b;

.field private final i:Lcom/twitter/android/av/audio/n;

.field private final j:J

.field private k:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/sn;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/moments/ui/fullscreen/a;Lahd;Lcom/twitter/android/moments/ui/b;Lcom/twitter/android/moments/ui/fullscreen/aq;Lcom/twitter/app/common/util/t;JLcom/twitter/android/av/audio/n;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->b:Lcom/twitter/android/sn;

    .line 60
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->e:Lcom/twitter/library/util/FriendshipCache;

    .line 61
    new-instance v0, Lcom/twitter/util/x;

    invoke-direct {v0}, Lcom/twitter/util/x;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->c:Lcom/twitter/util/x;

    .line 62
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->d:Lahd;

    .line 63
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->f:Lcom/twitter/android/moments/ui/fullscreen/a;

    .line 64
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->h:Lcom/twitter/android/moments/ui/b;

    .line 65
    iput-object p7, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->g:Lcom/twitter/android/moments/ui/fullscreen/aq;

    .line 66
    iput-wide p9, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->j:J

    .line 67
    iput-object p11, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->i:Lcom/twitter/android/av/audio/n;

    .line 68
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/ej;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/ej;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;)V

    invoke-interface {p8, v0}, Lcom/twitter/app/common/util/t;->a(Lcom/twitter/app/common/util/a;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ei;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b()V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/ei;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->k:Landroid/app/Dialog;

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/av/audio/n;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->i:Lcom/twitter/android/av/audio/n;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/moments/ui/fullscreen/aq;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->g:Lcom/twitter/android/moments/ui/fullscreen/aq;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/fullscreen/ei;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->j:J

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/twitter/util/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->c:Lcom/twitter/util/x;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->f:Lcom/twitter/android/moments/ui/fullscreen/a;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->j:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/core/Tweet;J)V

    .line 83
    return-void
.end method

.method public a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 98
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->b:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v0, :cond_0

    .line 100
    iget-boolean v0, p2, Lcom/twitter/model/core/Tweet;->a:Z

    if-eqz v0, :cond_3

    .line 101
    const/4 v0, 0x3

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->d:Lahd;

    invoke-virtual {v1, v0}, Lahd;->a(I)V

    .line 108
    :cond_0
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->c:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v0, :cond_1

    .line 110
    iget-boolean v0, p2, Lcom/twitter/model/core/Tweet;->c:Z

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x5

    .line 115
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->d:Lahd;

    invoke-virtual {v1, v0}, Lahd;->a(I)V

    .line 118
    :cond_1
    sget-object v0, Lcom/twitter/model/core/TweetActionType;->n:Lcom/twitter/model/core/TweetActionType;

    if-ne p1, v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->d:Lahd;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->b:Lcom/twitter/android/sn;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->e:Lcom/twitter/library/util/FriendshipCache;

    new-instance v5, Lcom/twitter/android/moments/ui/fullscreen/el;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->c:Lcom/twitter/util/x;

    invoke-direct {v5, p0, p2, v1}, Lcom/twitter/android/moments/ui/fullscreen/el;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/core/Tweet;Lcom/twitter/util/x;)V

    move-object v1, p1

    move-object v2, p2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 103
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 113
    :cond_4
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->f:Lcom/twitter/android/moments/ui/fullscreen/a;

    iget-object v0, p1, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/a;

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/android/moments/ui/fullscreen/a;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/a;)V

    .line 87
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;)V
    .locals 5

    .prologue
    .line 153
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->h:Lcom/twitter/android/moments/ui/b;

    iget-wide v2, p2, Lcom/twitter/model/moments/a;->b:J

    iget-object v0, p2, Lcom/twitter/model/moments/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/model/moments/ad;->p:Lcss;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/twitter/android/moments/ui/b;->a(JLjava/lang/String;Lcss;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ek;

    invoke-direct {v1, p0, p2}, Lcom/twitter/android/moments/ui/fullscreen/ek;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/a;)V

    .line 154
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjf;)Lrx/ap;

    .line 164
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b()V

    .line 144
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, p0}, Lcom/twitter/android/moments/ui/fullscreen/dz;->a(Landroid/content/res/Resources;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/a;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 147
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p0, p1, p3}, Lcom/twitter/android/moments/ui/fullscreen/dz;->a(Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/ei;Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/dialog/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 149
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/twitter/android/dialog/h;->a(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->k:Landroid/app/Dialog;

    .line 150
    return-void
.end method

.method public b(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    const/4 v2, 0x1

    .line 91
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/TweetActivity;

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tw"

    .line 93
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->d:Lahd;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 95
    return-void
.end method

.method public c(Lcom/twitter/model/core/Tweet;)V
    .locals 5

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/ei;->b()V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    .line 135
    invoke-static {v1, p1, p0}, Lcom/twitter/android/moments/ui/fullscreen/dz;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/twitter/android/dialog/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    .line 136
    invoke-static {v4, p1, p0}, Lcom/twitter/android/moments/ui/fullscreen/dz;->c(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->a:Landroid/content/Context;

    .line 137
    invoke-static {v4, p1, p0}, Lcom/twitter/android/moments/ui/fullscreen/dz;->b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/moments/ui/fullscreen/ei;)Lcom/twitter/android/dialog/j;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-static {v1, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/dialog/h;->a(Landroid/content/Context;Ljava/util/List;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ei;->k:Landroid/app/Dialog;

    .line 139
    return-void
.end method
