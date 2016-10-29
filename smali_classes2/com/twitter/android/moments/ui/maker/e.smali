.class public Lcom/twitter/android/moments/ui/maker/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasj;
.implements Lcom/twitter/app/common/inject/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasj",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;",
        "Lcom/twitter/app/common/inject/s;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

.field private final b:Lcom/twitter/android/moments/ui/maker/df;

.field private final c:Lcom/twitter/android/moments/data/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/ap;

.field private final e:Lams;

.field private f:Lrx/ap;

.field private g:Lcom/twitter/android/moments/ui/maker/dt;

.field private h:Lcom/twitter/model/moments/viewmodels/m;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/a;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Lams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/viewdelegate/a;",
            "Lcom/twitter/android/moments/ui/maker/df;",
            "Lcom/twitter/android/moments/data/aw",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Lams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    .line 42
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/e;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 43
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    .line 44
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/e;->e:Lams;

    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/aw;->a()Lrx/o;

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/e;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/f;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/f;-><init>(Lcom/twitter/android/moments/ui/maker/e;)V

    .line 47
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->d:Lrx/ap;

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/g;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/g;-><init>(Lcom/twitter/android/moments/ui/maker/e;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/maker/dt;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/e;->g:Lcom/twitter/android/moments/ui/maker/dt;

    .line 111
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a(Lcom/twitter/android/moments/ui/maker/dt;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/e;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/e;->c()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/e;Lcom/twitter/android/moments/ui/maker/dt;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/e;->a(Lcom/twitter/android/moments/ui/maker/dt;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/e;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    .line 101
    invoke-static {v1}, Lcom/twitter/android/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/viewmodels/m;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/aw;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b(Z)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/e;)Lcom/twitter/model/moments/viewmodels/m;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/ah;->a(Lcom/twitter/model/moments/viewmodels/m;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 90
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/data/aw;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/data/aw;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/e;->c:Lcom/twitter/android/moments/data/aw;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/moments/data/aw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/twitter/android/moments/ui/maker/i;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/i;-><init>(Lcom/twitter/android/moments/ui/maker/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->b:Lcom/twitter/android/moments/ui/maker/df;

    .line 71
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/df;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/dc;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/dc;->a()Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/h;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/h;-><init>(Lcom/twitter/android/moments/ui/maker/e;)V

    .line 73
    invoke-virtual {v0, v1}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->f:Lrx/ap;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/e;->a(Z)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->e:Lams;

    invoke-virtual {v0, p1}, Lams;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 83
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/e;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public as_()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->d:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 129
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->h:Lcom/twitter/model/moments/viewmodels/m;

    .line 117
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->f:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 118
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->f:Lrx/ap;

    .line 119
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->c()V

    .line 120
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->g:Lcom/twitter/android/moments/ui/maker/dt;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/e;->g:Lcom/twitter/android/moments/ui/maker/dt;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/dt;->b()V

    .line 122
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/e;->g:Lcom/twitter/android/moments/ui/maker/dt;

    .line 124
    :cond_0
    return-void
.end method
