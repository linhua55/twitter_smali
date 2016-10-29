.class public Lanw;
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
.field private final a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final b:Lcom/twitter/android/notificationtimeline/o;

.field private final c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/twitter/android/notificationtimeline/o;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p4, p5}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 58
    iput-object p2, p0, Lanw;->b:Lcom/twitter/android/notificationtimeline/o;

    .line 59
    iput-object p1, p0, Lanw;->c:Landroid/content/res/Resources;

    .line 60
    iput-object p3, p0, Lanw;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 61
    return-void
.end method

.method static synthetic a(Lanw;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lanw;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/ui/widget/TypefacesTextView;Lcom/twitter/model/core/Tweet;Z)V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setVisibility(I)V

    .line 181
    if-eqz p3, :cond_0

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setGravity(I)V

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    new-instance v1, Lany;

    invoke-direct {v1, v0}, Lany;-><init>(Landroid/view/View;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Lanw;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Lanw;->a(Lckw;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lckw;I)Lanp;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    .line 148
    new-instance v1, Lanr;

    iget v2, v0, Lcle;->d:I

    .line 149
    invoke-virtual {v0}, Lcle;->a()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    .line 151
    iget v2, v0, Lcle;->d:I

    packed-switch v2, :pswitch_data_0

    .line 173
    :pswitch_0
    invoke-virtual {v1}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    :goto_0
    return-object v0

    .line 153
    :pswitch_1
    invoke-virtual {v0}, Lcle;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1, v0}, Lanr;->a(Lcom/twitter/model/core/TwitterUser;)Lanr;

    move-result-object v0

    invoke-virtual {v0}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {p1}, Lckw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckg;

    invoke-virtual {v1, v0}, Lanr;->a(Lckg;)Lanr;

    move-result-object v0

    invoke-virtual {v0}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-virtual {p1}, Lckw;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lanw;->a(Lckn;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/twitter/model/core/Tweet;->e:Z

    .line 170
    :cond_0
    invoke-virtual {v1, v0}, Lanr;->a(Lcom/twitter/model/core/Tweet;)Lanr;

    move-result-object v0

    invoke-virtual {v0}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 45
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Lanw;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lckw;I)V
    .locals 12
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lany;

    .line 78
    iget-object v1, p2, Lckw;->b:Lcks;

    move-object v3, v1

    check-cast v3, Lcle;

    .line 79
    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 80
    iget-object v4, v0, Lany;->a:Landroid/widget/ImageView;

    sget-object v2, Lant;->a:Ljava/util/Map;

    iget v5, v3, Lcle;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanv;

    invoke-static {v4, v2}, Lans;->a(Landroid/widget/ImageView;Lanv;)V

    .line 82
    invoke-virtual {p2}, Lckw;->d()I

    move-result v2

    invoke-virtual {p2}, Lckw;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/Collection;)I

    move-result v4

    if-le v2, v4, :cond_0

    .line 83
    iget-object v2, v0, Lany;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v4, p0, Lanw;->c:Landroid/content/res/Resources;

    const v5, 0x7f0f00c8

    .line 85
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lanw;->c:Landroid/content/res/Resources;

    const v8, 0x7f0f00cc

    .line 86
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 84
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 91
    :goto_0
    invoke-virtual {p2}, Lckw;->e()Ljava/util/List;

    move-result-object v8

    .line 92
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 93
    if-lez v2, :cond_2

    .line 94
    iget-object v4, v0, Lany;->d:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    iget-object v4, v0, Lany;->e:[Landroid/view/View;

    array-length v9, v4

    .line 96
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 97
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    .line 98
    iget-object v2, v0, Lany;->e:[Landroid/view/View;

    aget-object v10, v2, v6

    .line 99
    iget-object v2, v0, Lany;->f:[Landroid/view/View;

    aget-object v2, v2, v6

    check-cast v2, Lcom/twitter/ui/widget/TypefacesTextView;

    .line 100
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/core/Tweet;

    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v11

    invoke-static {v7, v2, v4, v11}, Lanw;->a(Landroid/content/Context;Lcom/twitter/ui/widget/TypefacesTextView;Lcom/twitter/model/core/Tweet;Z)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 88
    :cond_0
    iget-object v2, v0, Lany;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 103
    :goto_2
    if-ge v2, v9, :cond_3

    .line 104
    iget-object v4, v0, Lany;->e:[Landroid/view/View;

    aget-object v4, v4, v2

    .line 105
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 109
    :cond_2
    iget-object v2, v0, Lany;->d:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    :cond_3
    iget-object v2, v0, Lany;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lans;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 114
    iget-object v2, v0, Lany;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v4

    invoke-virtual {v4}, Lcam;->c()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v2, v0, Lany;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 118
    iget v2, v3, Lcle;->d:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    .line 121
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a047f

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 122
    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v2, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    aput-object v2, v6, v8

    const/4 v3, 0x1

    invoke-virtual {p2}, Lckw;->c()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckg;

    iget-object v2, v2, Lckg;->c:Ljava/lang/String;

    aput-object v2, v6, v3

    .line 121
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v3, v0, Lany;->b:Landroid/widget/TextView;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/twitter/internal/android/widget/TypefacesSpan;

    const/4 v5, 0x0

    new-instance v6, Lcom/twitter/internal/android/widget/TypefacesSpan;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/twitter/internal/android/widget/TypefacesSpan;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/twitter/internal/android/widget/TypefacesSpan;-><init>(Landroid/content/Context;I)V

    aput-object v6, v4, v5

    const/16 v5, 0x22

    invoke-static {v4, v2, v5}, Lcom/twitter/library/util/an;->a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, v0, Lany;->i:Lcom/twitter/library/media/widget/UserImageView;

    new-instance v2, Lanx;

    invoke-direct {v2, p0, v7, v1}, Lanx;-><init>(Lanw;Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {v0, v2}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :goto_3
    return-void

    .line 138
    :cond_4
    iget-object v6, v0, Lany;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lanw;->b:Lcom/twitter/android/notificationtimeline/o;

    iget v1, v3, Lcle;->d:I

    invoke-virtual {v3}, Lcle;->f()Ljava/util/List;

    move-result-object v2

    iget v3, v3, Lcle;->e:I

    .line 139
    invoke-virtual {p2}, Lckw;->d()I

    move-result v4

    const/4 v5, 0x0

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/notificationtimeline/o;->a(ILjava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 45
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Lanw;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method
