.class public Lcyj;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcyj;


# instance fields
.field private final b:Lcyl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcyj;

    invoke-direct {v0}, Lcyj;-><init>()V

    sput-object v0, Lcyj;->a:Lcyj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcyj;->b:Lcyl;

    .line 35
    return-void
.end method

.method private constructor <init>(Lcyg;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcyl;

    invoke-direct {v0, p1}, Lcyl;-><init>(Lcyg;)V

    iput-object v0, p0, Lcyj;->b:Lcyl;

    .line 39
    new-instance v0, Lcyk;

    invoke-direct {v0, p0}, Lcyk;-><init>(Lcyj;)V

    invoke-interface {p1, v0}, Lcyg;->a(Lcyh;)V

    .line 57
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcyg;->c(I)V

    .line 58
    return-void
.end method

.method public static a(Lcyg;)Lcyj;
    .locals 1

    .prologue
    .line 30
    if-eqz p0, :cond_0

    new-instance v0, Lcyj;

    invoke-direct {v0, p0}, Lcyj;-><init>(Lcyg;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcyj;->a:Lcyj;

    goto :goto_0
.end method

.method static synthetic a(Lcyj;)Lcyl;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcyj;->b:Lcyl;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget v0, v0, Lcyl;->d:I

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v1, v0, Lcyl;->a:Lcyg;

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget v0, v0, Lcyl;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcyg;->c(I)V

    .line 201
    :cond_0
    return-void

    .line 199
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcyj;->b:Lcyl;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0, p1, p2}, Lcyg;->a(Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 174
    return-void
.end method

.method public a(Lcyh;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcyi;)Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {p1, v0}, Lcyi;->a(Lcyg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {p1, v0}, Lcyi;->b(Lcyg;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcyj;->b:Lcyl;

    invoke-virtual {v1, v0}, Lcyl;->a(I)V

    .line 75
    invoke-direct {p0}, Lcyj;->i()V

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0, p1}, Lcyg;->a(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcyj;->h()V

    .line 134
    :cond_0
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0, p1, p2}, Lcyg;->a(Ljava/lang/CharSequence;Z)V

    .line 143
    invoke-virtual {p0}, Lcyj;->h()V

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcyi;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {p1, v0}, Lcyi;->c(Lcyg;)V

    .line 88
    invoke-virtual {p0}, Lcyj;->h()V

    .line 90
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0, p1}, Lcyg;->b(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcyj;->h()V

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0, p1, p2}, Lcyg;->b(Ljava/lang/CharSequence;Z)V

    .line 165
    invoke-virtual {p0}, Lcyj;->h()V

    .line 167
    :cond_0
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcyg;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcyj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcyj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcyj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyj;->b:Lcyl;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcyj;->b:Lcyl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcyj;->b:Lcyl;

    const/4 v1, 0x0

    iput v1, v0, Lcyl;->d:I

    .line 183
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyi;

    .line 185
    iget-object v2, p0, Lcyj;->b:Lcyl;

    iget-object v2, v2, Lcyl;->a:Lcyg;

    invoke-interface {v0, v2}, Lcyi;->b(Lcyg;)I

    move-result v0

    .line 186
    iget-object v2, p0, Lcyj;->b:Lcyl;

    invoke-virtual {v2, v0}, Lcyl;->a(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->f()V

    .line 189
    iget-object v0, p0, Lcyj;->b:Lcyl;

    iget-object v0, v0, Lcyl;->a:Lcyg;

    invoke-interface {v0}, Lcyg;->g()V

    .line 190
    invoke-direct {p0}, Lcyj;->i()V

    .line 192
    :cond_1
    return-void
.end method
