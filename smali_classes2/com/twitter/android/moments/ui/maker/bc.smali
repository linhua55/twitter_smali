.class public Lcom/twitter/android/moments/ui/maker/bc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/bf;

.field private final b:Lcom/twitter/android/moments/ui/maker/di;

.field private final c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final d:Lcom/twitter/android/moments/data/maker/a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/model/moments/ak;",
            "Lcom/twitter/model/moments/maker/q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/twitter/model/moments/viewmodels/m;

.field private g:Lcom/twitter/model/moments/ak;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bf;Lcom/twitter/android/moments/ui/maker/di;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->e:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    .line 59
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bc;->b:Lcom/twitter/android/moments/ui/maker/di;

    .line 60
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bc;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 61
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/bc;->d:Lcom/twitter/android/moments/data/maker/a;

    .line 62
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/bc;
    .locals 3

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/maker/bf;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/bf;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/bf;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    move-result-object v1

    .line 49
    invoke-static {p0, v1}, Lcom/twitter/android/moments/ui/maker/di;->a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;)Lcom/twitter/android/moments/ui/maker/di;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/twitter/android/moments/ui/maker/bc;

    invoke-direct {v2, v0, v1, p3, p2}, Lcom/twitter/android/moments/ui/maker/bc;-><init>(Lcom/twitter/android/moments/ui/maker/bf;Lcom/twitter/android/moments/ui/maker/di;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V

    return-object v2
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/aa;)Lcom/twitter/model/moments/viewmodels/aa;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/aa;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/q;

    .line 131
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v1, v1, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, v0, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    .line 133
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    invoke-virtual {p1, v0}, Lcom/twitter/model/moments/viewmodels/aa;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/aa;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/aa;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/bc;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->f()V

    return-void
.end method

.method private a(Lcom/twitter/model/moments/ak;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Presenter is not bound to a group of pages yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/viewmodels/m;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->b:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v1, v2, :cond_1

    .line 93
    check-cast v0, Lcom/twitter/model/moments/viewmodels/aa;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/bc;->a(Lcom/twitter/model/moments/viewmodels/aa;)Lcom/twitter/model/moments/viewmodels/aa;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->b:Lcom/twitter/android/moments/ui/maker/di;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/di;->a(Lcom/twitter/model/moments/viewmodels/aa;)V

    .line 95
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->d()V

    .line 96
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->c()V

    .line 97
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->b()V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Moment page was not found or is not a tweet photo page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->b(Lcom/twitter/model/moments/ak;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->b(I)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->b(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/bc;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->g()V

    return-void
.end method

.method private b(Lcom/twitter/model/moments/ak;)V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->b:Lcom/twitter/android/moments/ui/maker/di;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/di;->b()Lcom/twitter/model/moments/k;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/twitter/model/moments/maker/q;

    new-instance v2, Lcom/twitter/model/moments/maker/o;

    invoke-direct {v2}, Lcom/twitter/model/moments/maker/o;-><init>()V

    .line 185
    invoke-virtual {v2, p1}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/maker/o;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v0}, Lcom/twitter/model/moments/maker/o;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/maker/o;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/o;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/n;

    invoke-direct {v1, v0}, Lcom/twitter/model/moments/maker/q;-><init>(Lcom/twitter/model/moments/maker/n;)V

    .line 188
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->c(Lcom/twitter/model/moments/ak;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    const v1, 0x7f0a032c

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->a(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    const v1, 0x7f0a05a4

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->a(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/m;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->f(Lcom/twitter/model/moments/ak;)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v2, v2, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/bf;->a(II)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/bf;->c()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bd;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/bd;-><init>(Lcom/twitter/android/moments/ui/maker/bc;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->b(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/be;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/be;-><init>(Lcom/twitter/android/moments/ui/maker/bc;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bf;->a(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->b(Lcom/twitter/model/moments/ak;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->e(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 163
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/bc;->a(Lcom/twitter/model/moments/ak;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/bc;->b(Lcom/twitter/model/moments/ak;)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->c(Lcom/twitter/model/moments/ak;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->h()V

    .line 174
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bc;->g:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/viewmodels/m;->d(Lcom/twitter/model/moments/ak;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 177
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/bc;->a(Lcom/twitter/model/moments/ak;)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/q;

    .line 193
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bc;->d:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->d:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->c()Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 196
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bc;->f:Lcom/twitter/model/moments/viewmodels/m;

    .line 72
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/bc;->a(Lcom/twitter/model/moments/ak;)V

    .line 73
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bc;->e()V

    .line 74
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bc;->a:Lcom/twitter/android/moments/ui/maker/bf;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/bf;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
