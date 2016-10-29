.class public Laof;
.super Lanz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanz",
        "<",
        "Lckw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/util/FriendshipCache;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/view/View$OnClickListener;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p4, p5}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 45
    new-instance v0, Laog;

    invoke-direct {v0, p0}, Laog;-><init>(Laof;)V

    iput-object v0, p0, Laof;->b:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p1, p0, Laof;->a:Lcom/twitter/library/util/FriendshipCache;

    .line 72
    iput-object p2, p0, Laof;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 73
    iput-object p3, p0, Laof;->d:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method

.method protected static a()Landroid/widget/AbsListView$LayoutParams;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static synthetic a(Laof;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Laof;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method protected static b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 210
    return-object v0
.end method


# virtual methods
.method public a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    const v2, 0x7f040025

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    const v3, 0x7f04015c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v3, Laoh;

    invoke-direct {v3, v1}, Laoh;-><init>(Landroid/view/View;)V

    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v4, v3, Laoh;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v3, v3, Laoh;->b:Landroid/view/View;

    iget-object v4, p0, Laof;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v3, Laoj;

    invoke-direct {v3, v2, v1}, Laoj;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 90
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v4, v3, Laoj;->d:Lcom/twitter/library/widget/ActionButton;

    .line 93
    if-eqz v4, :cond_0

    .line 94
    new-instance v5, Laoi;

    invoke-direct {v5}, Laoi;-><init>()V

    invoke-virtual {v4, v5}, Lcom/twitter/library/widget/ActionButton;->setTag(Ljava/lang/Object;)V

    .line 95
    const v5, 0x7f0200bd

    invoke-virtual {v4, v5}, Lcom/twitter/library/widget/ActionButton;->a(I)V

    .line 96
    iget-object v5, p0, Laof;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/twitter/library/widget/ActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    new-instance v4, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;

    invoke-direct {v4, v0}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Laof;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 101
    invoke-virtual {v4, v3}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Laof;->a()Landroid/widget/AbsListView$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;->setOrientation(I)V

    .line 104
    invoke-virtual {v4, v2, v0}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {v4, v1, v0}, Lcom/twitter/internal/android/widget/HighlightedLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-object v4
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laof;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laof;->a(Lckw;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lckw;I)Lanp;
    .locals 6

    .prologue
    .line 155
    new-instance v1, Lanr;

    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v2, v0, Lcle;->d:I

    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    invoke-virtual {v0}, Lcle;->a()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    invoke-virtual {v1}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laof;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lckw;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 112
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Laoj;

    .line 114
    iget-object v0, p2, Lckw;->b:Lcks;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcle;

    invoke-virtual {v0}, Lcle;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 115
    iget-object v0, v6, Laoj;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 116
    iget-object v0, v6, Laoj;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v2

    invoke-virtual {v2}, Lcam;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 117
    iput-object v1, v6, Laoj;->e:Lcom/twitter/model/core/TwitterUser;

    .line 119
    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v0, v1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 122
    new-array v5, v3, [Lcom/twitter/internal/android/widget/TypefacesSpan;

    new-instance v7, Lcom/twitter/internal/android/widget/TypefacesSpan;

    invoke-direct {v7, v4, v3}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v7, v5, v10

    .line 124
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 125
    iget-object v7, v6, Laoj;->b:Landroid/widget/TextView;

    const v8, 0x7f0a043f

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v10

    aput-object v0, v9, v3

    .line 126
    invoke-virtual {v4, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x22

    .line 125
    invoke-static {v5, v0, v8}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 132
    iget-object v0, v6, Laoj;->c:Landroid/view/View;

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoh;

    .line 134
    iput-object v1, v0, Laoh;->c:Lcom/twitter/model/core/TwitterUser;

    .line 135
    iget-object v7, v0, Laoh;->a:Landroid/widget/TextView;

    const v8, 0x7f0a08f7

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, v0, Laoh;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v7

    invoke-virtual {v7}, Lcam;->c()I

    move-result v7

    const v8, 0x7f0f0270

    .line 140
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v7

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 141
    iget-object v0, v0, Laoh;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 144
    iget-object v0, v6, Laoj;->d:Lcom/twitter/library/widget/ActionButton;

    iget-object v2, p0, Laof;->a:Lcom/twitter/library/util/FriendshipCache;

    .line 145
    invoke-virtual {v5}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/widget/ActivityUserView;->a(Lcom/twitter/library/widget/ActionButton;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/library/util/FriendshipCache;ZJ)V

    .line 147
    iget-object v0, v6, Laoj;->d:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoi;

    iput-object v1, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    .line 149
    iget-object v0, v6, Laoj;->d:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/ActionButton;->setUsername(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laof;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method
