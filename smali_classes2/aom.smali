.class public Laom;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/vw;

.field private final b:Lcom/twitter/library/util/FriendshipCache;

.field private final c:Lcom/twitter/util/collection/ReferenceList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/ReferenceList",
            "<",
            "Laoo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/app/Activity;

.field private final e:Lcom/twitter/ui/view/s;

.field private final f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private final j:Z

.field private final k:Landroid/view/View$OnLongClickListener;

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/twitter/android/vw;Landroid/view/View$OnLongClickListener;Lcom/twitter/library/util/FriendshipCache;Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLcom/twitter/util/collection/ReferenceList;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/vw;",
            "Landroid/view/View$OnLongClickListener;",
            "Lcom/twitter/library/util/FriendshipCache;",
            "Landroid/app/Activity;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Z",
            "Lcom/twitter/util/collection/ReferenceList",
            "<",
            "Laoo;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/twitter/ui/view/u;

    invoke-direct {v0}, Lcom/twitter/ui/view/u;-><init>()V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/u;->c(Z)Lcom/twitter/ui/view/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/ui/view/u;->a()Lcom/twitter/ui/view/s;

    move-result-object v0

    iput-object v0, p0, Laom;->e:Lcom/twitter/ui/view/s;

    .line 58
    new-instance v0, Laon;

    invoke-direct {v0, p0}, Laon;-><init>(Laom;)V

    iput-object v0, p0, Laom;->l:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Laom;->a:Lcom/twitter/android/vw;

    .line 94
    iput-object p2, p0, Laom;->k:Landroid/view/View$OnLongClickListener;

    .line 95
    iput-object p3, p0, Laom;->b:Lcom/twitter/library/util/FriendshipCache;

    .line 96
    iput-object p4, p0, Laom;->d:Landroid/app/Activity;

    .line 97
    iput-object p5, p0, Laom;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 98
    iput-object p7, p0, Laom;->c:Lcom/twitter/util/collection/ReferenceList;

    .line 99
    iput-boolean p6, p0, Laom;->h:Z

    .line 100
    iput-boolean p8, p0, Laom;->g:Z

    .line 101
    iput-boolean p9, p0, Laom;->j:Z

    .line 102
    return-void
.end method

.method static synthetic a(Laom;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Laom;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic b(Laom;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Laom;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Laom;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Laom;->g:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    new-instance v1, Laoo;

    invoke-direct {v1, v0}, Laoo;-><init>(Landroid/view/View;)V

    .line 109
    iget-object v2, v1, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v3, p0, Laom;->a:Lcom/twitter/android/vw;

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/TweetView;->setOnTweetViewClickListener(Lcom/twitter/library/view/aa;)V

    .line 110
    iget-object v2, v1, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v3, p0, Laom;->b:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/TweetView;->setFriendshipCache(Lcom/twitter/library/util/FriendshipCache;)V

    .line 111
    iget-object v2, v1, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/twitter/library/widget/TweetView;->setQuoteDisplayMode(I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Laom;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Laom;->k:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    iget-object v2, p0, Laom;->c:Lcom/twitter/util/collection/ReferenceList;

    invoke-virtual {v2, v1}, Lcom/twitter/util/collection/ReferenceList;->b(Ljava/lang/Object;)V

    .line 116
    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iput-boolean p4, p2, Lcom/twitter/model/core/Tweet;->e:Z

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoo;

    .line 123
    iput-object p3, v7, Laoo;->a:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Laom;->b:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2}, Lcom/twitter/library/util/FriendshipCache;->a(Lcom/twitter/model/core/Tweet;)V

    .line 125
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 126
    iget-object v3, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->k:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/library/widget/TweetView;->setDisplaySensitiveMedia(Z)V

    .line 127
    iget-object v0, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-boolean v3, p0, Laom;->h:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Laom;->d:Landroid/app/Activity;

    .line 128
    invoke-static {v3}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v3

    invoke-virtual {v3, p2}, Lbki;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    :goto_1
    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setAlwaysExpandMedia(Z)V

    .line 129
    iget-object v0, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setContentSize(F)V

    .line 130
    iget-object v0, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v2, p0, Laom;->d:Landroid/app/Activity;

    .line 131
    invoke-static {v2, p2}, Lcjg;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)Z

    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/TweetView;->setDisplayTranslationBadge(Z)V

    .line 133
    new-instance v0, Lcjm;

    iget-object v2, p0, Laom;->d:Landroid/app/Activity;

    sget-object v4, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    iget-object v5, p0, Laom;->f:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcjm;-><init>(ZLandroid/app/Activity;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 135
    iget-object v2, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-object v3, p0, Laom;->e:Lcom/twitter/ui/view/s;

    iget-boolean v4, p0, Laom;->i:Z

    invoke-virtual {v2, p2, v3, v4, v0}, Lcom/twitter/library/widget/TweetView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;ZLcjm;)V

    .line 139
    iget-object v0, v7, Laoo;->d:Lcom/twitter/library/widget/TweetView;

    iget-boolean v2, p0, Laom;->j:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TweetView;->setCurationAction(I)V

    .line 141
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    :cond_2
    move v2, v1

    .line 128
    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Laom;->h:Z

    .line 145
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Laom;->i:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Laom;->i:Z

    .line 150
    if-nez p1, :cond_0

    .line 151
    iget-object v0, p0, Laom;->c:Lcom/twitter/util/collection/ReferenceList;

    invoke-virtual {v0}, Lcom/twitter/util/collection/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 152
    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->l()V

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method
