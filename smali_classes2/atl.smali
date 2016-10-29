.class public Latl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;
.implements Lcom/twitter/library/widget/e;
.implements Lcom/twitter/library/widget/renderablecontent/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/twitter/library/widget/e",
        "<",
        "Lcom/twitter/library/widget/UserView;",
        ">;",
        "Lcom/twitter/library/widget/renderablecontent/c",
        "<",
        "Latp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/ViewGroup;

.field private final d:Lcom/twitter/library/widget/ProfileCardView;

.field private e:Lcom/twitter/android/bt;

.field private final f:Lcom/twitter/model/core/Tweet;

.field private final g:Latq;

.field private final h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final i:Lcom/twitter/library/util/FriendshipCache;

.field private final j:Lcom/twitter/library/util/y;

.field private k:Landroid/view/View;

.field private l:Latr;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Latq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Latl;->i:Lcom/twitter/library/util/FriendshipCache;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Latl;->b:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Latl;->a:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    .line 102
    iput-object p4, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 103
    iput-object p3, p0, Latl;->g:Latq;

    .line 105
    const v0, 0x7f04021b

    invoke-direct {p0, p1, v0}, Latl;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Latl;->c:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Latl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f040248

    invoke-direct {p0, v0, v1}, Latl;->a(Landroid/view/ViewGroup;I)Lcom/twitter/library/widget/ProfileCardView;

    move-result-object v0

    iput-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    .line 108
    iget-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ProfileCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ProfileCardView;->c()V

    .line 111
    new-instance v0, Latm;

    invoke-direct {v0, p0}, Latm;-><init>(Latl;)V

    iput-object v0, p0, Latl;->j:Lcom/twitter/library/util/y;

    .line 118
    iget-object v0, p0, Latl;->c:Landroid/view/ViewGroup;

    const v1, 0x7f130511

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Latl;->k:Landroid/view/View;

    .line 119
    iget-object v0, p0, Latl;->j:Lcom/twitter/library/util/y;

    iget-object v1, p0, Latl;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    iget-object v1, p0, Latl;->g:Latq;

    invoke-direct {p0, v0, v1}, Latl;->a(Lcom/twitter/library/widget/ProfileCardView;Latq;)V

    .line 123
    iget-object v0, p0, Latl;->i:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/FriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 124
    invoke-direct {p0}, Latl;->d()V

    .line 125
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;JJ)Lcom/twitter/android/bt;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 147
    sget-object v0, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ownerId"

    .line 149
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 152
    new-instance v0, Lcom/twitter/android/bt;

    sget-object v3, Lchr;->a:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;I)Lcom/twitter/library/widget/ProfileCardView;
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f130510

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 133
    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 135
    const v0, 0x7f13057a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/ProfileCardView;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 315
    iget-object v0, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, "user_recommendation"

    const-string/jumbo v3, "profile_click"

    invoke-static {v1, v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {p0}, Latl;->h()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Latl;->a:Landroid/content/Context;

    iget-object v3, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 319
    invoke-virtual {v1, v2, p2, v3, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->b:J

    .line 320
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 321
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 322
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 324
    iget-wide v2, p2, Lcom/twitter/model/core/Tweet;->b:J

    iget-object v4, p2, Lcom/twitter/model/core/Tweet;->l:Ljava/lang/String;

    .line 325
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v5

    move-object v1, p1

    move-object v6, p3

    .line 324
    invoke-static/range {v1 .. v7}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/timeline/al;)V

    .line 326
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 267
    iget-object v1, p0, Latl;->g:Latq;

    iget-boolean v1, v1, Latq;->d:Z

    if-nez v1, :cond_0

    const v1, 0x7f130030

    if-eq v0, v1, :cond_0

    const v1, 0x7f1305c9

    if-ne v0, v1, :cond_3

    .line 268
    :cond_0
    invoke-direct {p0}, Latl;->g()Lasa;

    move-result-object v0

    invoke-interface {v0}, Lasa;->a()V

    .line 269
    iget-object v0, p0, Latl;->i:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v0

    .line 270
    iget-object v1, p0, Latl;->l:Latr;

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Latl;->l:Latr;

    invoke-virtual {v1, v0}, Latr;->a(Z)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    iget-object v1, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/ProfileCardView;->setIsFollowing(Z)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Latl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 277
    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {p0, v0, v1, v2}, Latl;->a(Landroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    goto :goto_0
.end method

.method static synthetic a(Latl;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Latl;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Lcom/twitter/library/widget/ProfileCardView;Latq;)V
    .locals 5

    .prologue
    .line 167
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/ProfileCardView;->setUserImageSize(I)V

    .line 168
    sget v0, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/ProfileCardView;->setContentSize(F)V

    .line 169
    const v0, 0x7f0200bc

    invoke-virtual {p1, v0, p0}, Lcom/twitter/library/widget/ProfileCardView;->a(ILcom/twitter/library/widget/e;)V

    .line 171
    iget-boolean v0, p2, Latq;->a:Z

    if-nez v0, :cond_0

    .line 172
    const v0, 0x7f130003

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/ProfileCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/twitter/util/ak;->a(F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_0
    iget-boolean v0, p2, Latq;->a:Z

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/twitter/library/widget/ProfileCardView;->d()V

    .line 185
    :cond_1
    iget-object v0, p0, Latl;->j:Lcom/twitter/library/util/y;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/ProfileCardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    iget-object v0, p0, Latl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 188
    iget-boolean v1, p2, Latq;->c:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 189
    const v1, 0x7f040268

    invoke-direct {p0, v0, v1}, Latl;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    iget-object v1, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/twitter/library/widget/ProfileCardView;->setFollowVisibility(I)V

    .line 191
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    const/4 v1, 0x3

    const v2, 0x7f130089

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    new-instance v4, Latr;

    const v1, 0x7f130030

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/ui/widget/TwitterButton;

    const v2, 0x7f1305c9

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v4, v1, v2}, Latr;-><init>(Lcom/twitter/ui/widget/TwitterButton;Lcom/twitter/ui/widget/TwitterButton;)V

    iput-object v4, p0, Latl;->l:Latr;

    .line 198
    invoke-virtual {p1, v0, v3}, Lcom/twitter/library/widget/ProfileCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Latl;->l:Latr;

    iget-object v0, v0, Latr;->a:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v1, Latn;

    iget-object v2, p0, Latl;->l:Latr;

    iget-object v2, v2, Latr;->a:Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v1, p0, v2}, Latn;-><init>(Latl;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v0, p0, Latl;->l:Latr;

    iget-object v0, v0, Latr;->b:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v1, Lato;

    iget-object v2, p0, Latl;->l:Latr;

    iget-object v2, v2, Latr;->b:Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v1, p0, v2}, Lato;-><init>(Latl;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    :cond_2
    return-void
.end method

.method private a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/ProfileCardView;->setUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 157
    iget-object v0, p0, Latl;->i:Lcom/twitter/library/util/FriendshipCache;

    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/library/util/FriendshipCache;->c(JI)V

    .line 158
    iget-object v0, p0, Latl;->g:Latq;

    iget-boolean v0, v0, Latq;->b:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Latl;->d:Lcom/twitter/library/widget/ProfileCardView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ProfileCardView;->a()V

    .line 161
    :cond_0
    iget-object v0, p0, Latl;->l:Latr;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Latl;->l:Latr;

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v1}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Latr;->a(Z)V

    .line 164
    :cond_1
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 139
    iget-object v1, p0, Latl;->a:Landroid/content/Context;

    iget-object v0, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->b:J

    .line 140
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Latl;->a(Landroid/content/Context;JJ)Lcom/twitter/android/bt;

    move-result-object v0

    iput-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    .line 141
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/bt;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 142
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->startLoading()V

    .line 143
    return-void
.end method

.method private g()Lasa;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Latl;->a:Landroid/content/Context;

    iget-object v1, p0, Latl;->h:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-static {v0, v1}, Lasb;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lasb;

    move-result-object v0

    .line 306
    iget-object v1, p0, Latl;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Larz;->a(Landroid/content/Context;Lasb;)Larz;

    move-result-object v0

    iget-object v1, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    .line 307
    invoke-virtual {v0, v1}, Larz;->a(Lcom/twitter/model/core/Tweet;)Larz;

    move-result-object v0

    iget-object v1, p0, Latl;->i:Lcom/twitter/library/util/FriendshipCache;

    .line 308
    invoke-virtual {v0, v1}, Larz;->a(Lcom/twitter/library/util/FriendshipCache;)Larz;

    move-result-object v0

    const-string/jumbo v1, "user_recommendation"

    .line 309
    invoke-virtual {v0, v1}, Larz;->a(Ljava/lang/String;)Larz;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Larz;->a()Lasa;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method private h()J
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    invoke-virtual {v0, p0}, Lcom/twitter/android/bt;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 224
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->cancelLoad()Z

    .line 225
    iget-object v0, p0, Latl;->e:Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->stopLoading()V

    .line 227
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 292
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p2}, Lcom/twitter/library/provider/dm;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0}, Latl;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 300
    :goto_0
    invoke-static {p2}, Ldbt;->a(Landroid/database/Cursor;)V

    .line 301
    return-void

    .line 296
    :cond_0
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "UserContent failed to load user"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "tweet_id"

    iget-object v2, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->C:J

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Latl;->f:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->b:J

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_0
.end method

.method public a(Latp;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 52
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Latl;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 1

    .prologue
    .line 285
    const v0, 0x7f130003

    if-ne v0, p4, :cond_0

    .line 286
    invoke-direct {p0}, Latl;->g()Lasa;

    move-result-object v0

    invoke-interface {v0}, Lasa;->a()V

    .line 288
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Latp;

    invoke-virtual {p0, p1}, Latl;->a(Latp;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public ao_()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Latl;->d()V

    .line 255
    return-void
.end method

.method public ap_()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public aq_()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Latl;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Latl;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
