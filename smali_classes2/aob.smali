.class public Laob;
.super Lanz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanz",
        "<",
        "Lckz;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;Lcom/twitter/android/notificationtimeline/l;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 48
    new-instance v0, Laoc;

    invoke-direct {v0, p0, p3}, Laoc;-><init>(Laob;Lcom/twitter/android/notificationtimeline/l;)V

    iput-object v0, p0, Laob;->a:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Laod;

    invoke-direct {v0, p0, p3}, Laod;-><init>(Laob;Lcom/twitter/android/notificationtimeline/l;)V

    iput-object v0, p0, Laob;->b:Landroid/view/View$OnClickListener;

    .line 67
    return-void
.end method

.method private static a(Landroid/widget/TextView;Lckt;)V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p1, Lckt;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    iget-object v2, p1, Lckt;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p1, Lckt;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/twitter/library/widget/an;->a(Ljava/lang/Iterable;Landroid/text/SpannableStringBuilder;Landroid/content/Context;)V

    .line 131
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a(Lckz;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    const v1, 0x7f130090

    new-instance v2, Laoe;

    invoke-direct {v2, v0}, Laoe;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-object v1, p0, Laob;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f130396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v3

    invoke-virtual {v3}, Lcam;->c()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 81
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lckz;

    invoke-virtual {p0, p1, p2}, Laob;->a(Lckz;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lckz;

    invoke-virtual {p0, p1, p2}, Laob;->a(Lckz;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lckz;I)Lanp;
    .locals 6

    .prologue
    .line 138
    new-instance v1, Lanr;

    const/4 v2, 0x0

    iget-object v0, p1, Lckz;->b:Lcks;

    check-cast v0, Lckx;

    invoke-virtual {v0}, Lckx;->a()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    .line 139
    invoke-virtual {v1}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    .line 138
    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lckz;

    invoke-virtual {p0, p1, p2, p3}, Laob;->a(Landroid/view/View;Lckz;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lckz;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 87
    const v0, 0x7f130090

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoe;

    .line 88
    iget-object v1, p2, Lckz;->b:Lcks;

    check-cast v1, Lckx;

    .line 89
    iget-object v3, v0, Laoe;->b:Lcyc;

    iget-object v2, p2, Lckz;->b:Lcks;

    check-cast v2, Lckx;

    iget-object v2, v2, Lckx;->k:Ljava/util/List;

    invoke-static {v3, v2}, Lans;->a(Lcyc;Ljava/util/List;)V

    .line 90
    iget-object v2, v0, Laoe;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lckx;->d:Lckt;

    invoke-static {v2, v3}, Laob;->a(Landroid/widget/TextView;Lckt;)V

    .line 93
    iget-object v2, v1, Lckx;->j:Lclc;

    if-eqz v2, :cond_0

    sget-object v2, Lanu;->a:Ljava/util/Map;

    iget-object v3, v1, Lckx;->j:Lclc;

    iget v3, v3, Lclc;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    sget-object v2, Lanu;->a:Ljava/util/Map;

    iget-object v3, v1, Lckx;->j:Lclc;

    iget v3, v3, Lclc;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanv;

    .line 98
    :goto_0
    iget-object v3, v0, Laoe;->f:Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lans;->a(Landroid/widget/ImageView;Lanv;)V

    .line 100
    iget-object v2, v1, Lckx;->l:Ljava/util/List;

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/Tweet;

    .line 101
    if-eqz v2, :cond_1

    .line 102
    iget-object v3, v0, Laoe;->c:Lcyc;

    invoke-virtual {v3, v4}, Lcyc;->a(I)V

    .line 103
    iget-object v3, v0, Laoe;->c:Lcyc;

    invoke-virtual {v3}, Lcyc;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    iget-object v2, v1, Lckx;->e:Lckt;

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, v0, Laoe;->d:Lcyc;

    invoke-virtual {v2, v4}, Lcyc;->a(I)V

    .line 110
    iget-object v2, v0, Laoe;->d:Lcyc;

    invoke-virtual {v2}, Lcyc;->a()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lckx;->e:Lckt;

    invoke-static {v2, v3}, Laob;->a(Landroid/widget/TextView;Lckt;)V

    .line 115
    :goto_2
    const-string/jumbo v2, "CaretDropDown"

    iget-object v1, v1, Lckx;->i:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, v0, Laoe;->e:Lcyc;

    invoke-virtual {v1, v4}, Lcyc;->a(I)V

    .line 117
    iget-object v0, v0, Laoe;->e:Lcyc;

    invoke-virtual {v0}, Lcyc;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Laob;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_3
    const v0, 0x7f13000b

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 96
    :cond_0
    sget-object v2, Lanu;->c:Lanv;

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, v0, Laoe;->c:Lcyc;

    invoke-virtual {v2, v5}, Lcyc;->a(I)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, v0, Laoe;->d:Lcyc;

    invoke-virtual {v2, v5}, Lcyc;->a(I)V

    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, v0, Laoe;->e:Lcyc;

    invoke-virtual {v0, v5}, Lcyc;->a(I)V

    goto :goto_3
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lckz;

    invoke-virtual {p0, p1, p2, p3}, Laob;->a(Landroid/view/View;Lckz;I)V

    return-void
.end method

.method public a(Lckz;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lckz;

    invoke-virtual {p0, p1}, Laob;->a(Lckz;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lckn;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lckz;

    invoke-virtual {p0, p1}, Laob;->a(Lckz;)Z

    move-result v0

    return v0
.end method
