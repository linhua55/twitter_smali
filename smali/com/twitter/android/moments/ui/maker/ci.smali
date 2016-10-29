.class public Lcom/twitter/android/moments/ui/maker/ci;
.super Lcom/twitter/app/common/inject/v;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/ck;

.field private final b:Ladj;

.field private final c:Lajn;

.field private final d:Lcom/twitter/android/moments/ui/maker/cp;

.field private final e:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/data/maker/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/twitter/android/moments/ui/maker/co;

.field private g:Lcom/twitter/android/moments/data/maker/a;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/ck;Ladj;Lajn;Lcom/twitter/android/moments/ui/maker/cp;Lcom/twitter/util/object/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/ck;",
            "Ladj;",
            "Lajn;",
            "Lcom/twitter/android/moments/ui/maker/cp;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/data/maker/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/app/common/inject/v;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ci;->a:Lcom/twitter/android/moments/ui/maker/ck;

    .line 56
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ci;->b:Ladj;

    .line 57
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ci;->c:Lajn;

    .line 58
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ci;->d:Lcom/twitter/android/moments/ui/maker/cp;

    .line 59
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ci;->e:Lcom/twitter/util/object/c;

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->a:Lcom/twitter/android/moments/ui/maker/ck;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ck;->aK_()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/ci;->a(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/ci;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/data/maker/a;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ci;->g:Lcom/twitter/android/moments/data/maker/a;

    return-object p1
.end method

.method public static a(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Ladj;Lcom/twitter/util/object/c;Laeo;Laer;)Lcom/twitter/android/moments/ui/maker/ci;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/inject/InjectedFragmentActivity;",
            "Ladj;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/data/maker/a;",
            ">;",
            "Laeo;",
            "Laer;",
            ")",
            "Lcom/twitter/android/moments/ui/maker/ci;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lcom/twitter/android/moments/ui/maker/ck;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/ui/maker/ck;-><init>(Landroid/view/LayoutInflater;)V

    .line 44
    new-instance v3, Lajn;

    invoke-direct {v3, p0}, Lajn;-><init>(Landroid/app/Activity;)V

    .line 45
    new-instance v4, Lcom/twitter/android/moments/ui/maker/cp;

    invoke-direct {v4, p0, p3, p4}, Lcom/twitter/android/moments/ui/maker/cp;-><init>(Lcom/twitter/app/common/inject/InjectedFragmentActivity;Laeo;Laer;)V

    .line 47
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ci;

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/ci;-><init>(Lcom/twitter/android/moments/ui/maker/ck;Ladj;Lajn;Lcom/twitter/android/moments/ui/maker/cp;Lcom/twitter/util/object/c;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/ci;Lcom/twitter/android/moments/ui/maker/co;)Lcom/twitter/android/moments/ui/maker/co;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ci;->f:Lcom/twitter/android/moments/ui/maker/co;

    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/util/object/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->e:Lcom/twitter/util/object/c;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/data/maker/a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->g:Lcom/twitter/android/moments/data/maker/a;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/cp;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->d:Lcom/twitter/android/moments/ui/maker/cp;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/co;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->f:Lcom/twitter/android/moments/ui/maker/co;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/ck;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->a:Lcom/twitter/android/moments/ui/maker/ck;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/moments/ui/maker/ci;)Lajn;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->c:Lajn;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/twitter/model/moments/ak;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->b:Ladj;

    invoke-interface {v0, p1, p2}, Ladj;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/cj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/maker/cj;-><init>(Lcom/twitter/android/moments/ui/maker/ci;JLcom/twitter/model/moments/ak;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 81
    return-void
.end method

.method public as_()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->g:Lcom/twitter/android/moments/data/maker/a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->g:Lcom/twitter/android/moments/data/maker/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/maker/a;->d()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/twitter/app/common/inject/v;->as_()V

    .line 89
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->f:Lcom/twitter/android/moments/ui/maker/co;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ci;->f:Lcom/twitter/android/moments/ui/maker/co;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/co;->d()V

    .line 95
    :cond_0
    return-void
.end method
