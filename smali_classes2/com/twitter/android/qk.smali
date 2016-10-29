.class public Lcom/twitter/android/qk;
.super Lcvt;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/dl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/android/qj;",
        ">;",
        "Lcom/twitter/android/widget/dl;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/android/qo;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/view/LayoutInflater;

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "PYMK"

    const v2, 0x7f0a083e

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "LOCATION_GEO"

    const v2, 0x7f0a083d

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "TWITTER_HISTORY"

    const v2, 0x7f0a0841

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/twitter/android/qk;->b:Ljava/util/Map;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/qo;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/android/qo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/qk;->a:Ljava/util/Map;

    .line 73
    iput-object p2, p0, Lcom/twitter/android/qk;->c:Lcom/twitter/android/qo;

    .line 74
    iput-object p3, p0, Lcom/twitter/android/qk;->d:Ljava/util/Set;

    .line 75
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    const v1, 0x7f0d02fb

    invoke-direct {v0, p1, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/qk;->e:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method

.method private a(JZ)V
    .locals 3

    .prologue
    .line 288
    if-eqz p3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/twitter/android/qk;->d:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/qk;->d:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/qk;Lcom/twitter/library/widget/UserView;J)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/qk;->a(Lcom/twitter/library/widget/UserView;J)V

    return-void
.end method

.method private a(Lcom/twitter/library/widget/UserView;J)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p1, Lcom/twitter/library/widget/UserView;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/twitter/android/qk;->a(JZ)V

    .line 272
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qq;

    iget-object v1, v0, Lcom/twitter/android/qq;->d:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/twitter/android/qk;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/twitter/android/qk;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qq;

    iget-object v0, v0, Lcom/twitter/android/qq;->d:Ljava/lang/String;

    .line 278
    invoke-static {v1, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/twitter/android/qk;->f:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/qk;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/qk;->notifyDataSetChanged()V

    .line 284
    iget-object v0, p0, Lcom/twitter/android/qk;->c:Lcom/twitter/android/qo;

    invoke-interface {v0}, Lcom/twitter/android/qo;->a()V

    .line 285
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/android/qj;)I
    .locals 1

    .prologue
    .line 222
    iget v0, p1, Lcom/twitter/android/qj;->c:I

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/twitter/android/qj;

    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->a(Lcom/twitter/android/qj;)I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/twitter/android/qk;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    new-instance v0, Lcom/twitter/android/qp;

    invoke-direct {v0, v1}, Lcom/twitter/android/qp;-><init>(Landroid/view/View;)V

    .line 193
    new-instance v2, Lcom/twitter/android/qr;

    invoke-direct {v2}, Lcom/twitter/android/qr;-><init>()V

    .line 195
    invoke-virtual {v2, v0}, Lcom/twitter/android/qr;->a(Lcom/twitter/android/qp;)Lcom/twitter/android/qr;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/twitter/android/qr;->a()Lcom/twitter/android/qq;

    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    instance-of v0, v1, Lcom/twitter/android/widget/SmartFollowHeaderView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 200
    check-cast v0, Lcom/twitter/android/widget/SmartFollowHeaderView;

    new-instance v2, Lcom/twitter/android/qn;

    invoke-direct {v2, p0}, Lcom/twitter/android/qn;-><init>(Lcom/twitter/android/qk;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/SmartFollowHeaderView;->setOnCheckChangedListener(Lcom/twitter/android/widget/eu;)V

    .line 212
    :cond_0
    return-object v1
.end method

.method protected a(Landroid/content/Context;Lcom/twitter/android/qj;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 82
    iget v0, p2, Lcom/twitter/android/qj;->c:I

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040384

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    sget-object v0, Lcom/twitter/android/qq;->a:Lcom/twitter/android/qq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-object v1

    .line 84
    :pswitch_0
    const v0, 0x7f040385

    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/qk;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/qk;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f040065

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 89
    check-cast v0, Lcom/twitter/library/widget/UserView;

    .line 90
    new-instance v2, Lcom/twitter/android/xy;

    invoke-direct {v2, v0}, Lcom/twitter/android/xy;-><init>(Lcom/twitter/library/widget/BaseUserView;)V

    .line 91
    iget-object v3, p2, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v2, v3}, Lcom/twitter/android/xy;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 92
    new-instance v3, Lcom/twitter/android/qr;

    invoke-direct {v3}, Lcom/twitter/android/qr;-><init>()V

    .line 94
    invoke-virtual {v3, v2}, Lcom/twitter/android/qr;->a(Lcom/twitter/android/xy;)Lcom/twitter/android/qr;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/twitter/android/qr;->a()Lcom/twitter/android/qq;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserView;->setTag(Ljava/lang/Object;)V

    .line 99
    new-instance v2, Lcom/twitter/android/ql;

    invoke-direct {v2, p0}, Lcom/twitter/android/ql;-><init>(Lcom/twitter/android/qk;)V

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v2, Lcom/twitter/android/qm;

    invoke-direct {v2, p0}, Lcom/twitter/android/qm;-><init>(Lcom/twitter/android/qk;)V

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserView;->setCheckBoxClickListener(Lcom/twitter/library/widget/e;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    check-cast p2, Lcom/twitter/android/qj;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/qk;->a(Landroid/content/Context;Lcom/twitter/android/qj;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;)",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcvt;->a(Lcmf;)Lcmf;

    move-result-object v0

    .line 166
    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->b(Lcmf;)V

    .line 167
    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/twitter/android/qk;->f:Landroid/view/View;

    .line 172
    return-void
.end method

.method public a(Landroid/view/View;III)V
    .locals 1

    .prologue
    .line 335
    sub-int v0, p2, p3

    .line 336
    invoke-virtual {p0, v0}, Lcom/twitter/android/qk;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    .line 337
    iget-object v0, v0, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/qk;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 338
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/qj;)V
    .locals 6

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qq;

    .line 134
    iget v1, p3, Lcom/twitter/android/qj;->c:I

    packed-switch v1, :pswitch_data_0

    .line 157
    iget-object v1, p3, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/android/qq;->d:Ljava/lang/String;

    .line 161
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p3, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/qk;->a(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 140
    :pswitch_1
    check-cast p1, Lcom/twitter/library/widget/UserSocialView;

    .line 141
    iget-object v1, p3, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 142
    iget-object v2, p3, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/android/qq;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/UserSocialView;->setUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/twitter/library/widget/UserSocialView;->setContentSize(F)V

    .line 145
    iget-boolean v2, p3, Lcom/twitter/android/qj;->d:Z

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, v1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 147
    invoke-static {v2}, Lcom/twitter/android/profiles/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    .line 146
    invoke-virtual {p1, v2, v3}, Lcom/twitter/library/widget/UserSocialView;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    .line 149
    :cond_0
    iget-object v0, v0, Lcom/twitter/android/qq;->b:Lcom/twitter/android/xy;

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0, v1}, Lcom/twitter/android/xy;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 153
    :cond_1
    iget-object v0, p1, Lcom/twitter/library/widget/UserSocialView;->s:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/twitter/android/qk;->d:Ljava/util/Set;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p3, Lcom/twitter/android/qj;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/qk;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/qj;)V

    return-void
.end method

.method a(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qq;

    .line 177
    sget-object v1, Lcom/twitter/android/qk;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/qk;->j()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/twitter/android/qk;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    iput-object p1, v0, Lcom/twitter/android/qq;->d:Ljava/lang/String;

    .line 183
    iget-object v0, v0, Lcom/twitter/android/qq;->c:Lcom/twitter/android/qp;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget-object v2, v0, Lcom/twitter/android/qp;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v0, Lcom/twitter/android/qp;->c:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    :cond_0
    return-void

    :cond_1
    move-object v1, p1

    .line 180
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->b(Ljava/lang/String;)Lcmf;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcmf;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    .line 255
    iget-object v2, v0, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    .line 256
    if-eqz v2, :cond_0

    .line 257
    iget-object v0, v0, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lcom/twitter/android/qk;->a(JZ)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/qk;->notifyDataSetChanged()V

    .line 262
    iget-object v0, p0, Lcom/twitter/android/qk;->c:Lcom/twitter/android/qo;

    invoke-interface {v0}, Lcom/twitter/android/qo;->a()V

    .line 263
    iget-object v0, p0, Lcom/twitter/android/qk;->c:Lcom/twitter/android/qo;

    invoke-interface {v0, p1, p2}, Lcom/twitter/android/qo;->a(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->b(Ljava/lang/String;)Lcmf;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcmf;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    .line 237
    iget-object v2, v0, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    .line 238
    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/twitter/android/qk;->d:Ljava/util/Set;

    iget-object v0, v0, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_(II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 315
    sub-int v0, p1, p2

    .line 316
    const/4 v2, 0x0

    .line 317
    if-ltz v0, :cond_2

    .line 318
    invoke-virtual {p0, v0}, Lcom/twitter/android/qk;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    .line 320
    iget v3, v0, Lcom/twitter/android/qj;->c:I

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 330
    :goto_0
    return v0

    .line 322
    :cond_0
    iget v3, v0, Lcom/twitter/android/qj;->c:I

    if-nez v3, :cond_2

    .line 323
    invoke-virtual {p0, v0}, Lcom/twitter/android/qk;->b(Lcom/twitter/android/qj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 326
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Lcmf;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v3, Lcmp;

    invoke-direct {v3}, Lcmp;-><init>()V

    .line 304
    iget-object v0, p0, Lcom/twitter/android/qk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ac;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 307
    invoke-virtual {p0, v2}, Lcom/twitter/android/qk;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 306
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v3}, Lcmp;->a()Lcmo;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcmf;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 359
    if-eqz p1, :cond_2

    .line 360
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lcmf;->bb_()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 361
    invoke-virtual {p1, v3}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    .line 362
    if-eqz v0, :cond_0

    .line 365
    iget-object v1, v0, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, v0, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/util/collection/ac;

    .line 367
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 368
    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 373
    :goto_1
    iget-object v0, v0, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 377
    :cond_2
    iput-object v4, p0, Lcom/twitter/android/qk;->a:Ljava/util/Map;

    .line 378
    return-void
.end method

.method protected b(Lcom/twitter/android/qj;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p1, Lcom/twitter/android/qj;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/qk;->b(Ljava/lang/String;)Lcmf;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 349
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/qj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/twitter/android/qk;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/qj;

    iget-object v0, v0, Lcom/twitter/android/qj;->a:Lcom/twitter/model/core/TwitterUser;

    .line 228
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x3

    return v0
.end method
