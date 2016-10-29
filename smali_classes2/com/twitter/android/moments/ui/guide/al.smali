.class public Lcom/twitter/android/moments/ui/guide/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/q;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/guide/g;

.field private final b:Lcom/twitter/android/moments/data/maker/t;

.field private final c:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/android/moments/ui/guide/a;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/moments/ui/guide/g;Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/ui/guide/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/guide/g;",
            "Lcom/twitter/android/moments/data/maker/t;",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/a;",
            ">;",
            "Lcom/twitter/android/moments/ui/guide/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/al;->a:Lcom/twitter/android/moments/ui/guide/g;

    .line 43
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/al;->b:Lcom/twitter/android/moments/data/maker/t;

    .line 44
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/al;->c:Lcom/twitter/util/object/c;

    .line 45
    iput-object p4, p0, Lcom/twitter/android/moments/ui/guide/al;->d:Lcom/twitter/android/moments/ui/guide/a;

    .line 46
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/guide/g;Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/ui/guide/a;)Lcom/twitter/android/moments/ui/guide/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/guide/g;",
            "Lcom/twitter/android/moments/data/maker/t;",
            "Lcom/twitter/util/object/c",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/a;",
            ">;",
            "Lcom/twitter/android/moments/ui/guide/a;",
            ")",
            "Lcom/twitter/android/moments/ui/guide/al;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/android/moments/ui/guide/al;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/guide/al;-><init>(Lcom/twitter/android/moments/ui/guide/g;Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Lcom/twitter/android/moments/ui/guide/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/guide/al;Lcom/twitter/util/collection/ab;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/guide/al;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method

.method private a(Lcom/twitter/util/collection/ab;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/al;->b:Lcom/twitter/android/moments/data/maker/t;

    .line 71
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    iget-object v4, p0, Lcom/twitter/android/moments/ui/guide/al;->c:Lcom/twitter/util/object/c;

    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iget-wide v6, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/moments/data/maker/t;->a(JLcom/twitter/model/moments/maker/w;)Lrx/w;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lrx/w;->a()Lrx/ap;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/al;->d:Lcom/twitter/android/moments/ui/guide/a;

    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/ui/guide/a;->a(Lcom/twitter/util/collection/ab;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/al;->a:Lcom/twitter/android/moments/ui/guide/g;

    .line 57
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/g;->a()Laui;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/twitter/android/moments/ui/guide/am;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/moments/ui/guide/am;-><init>(Lcom/twitter/android/moments/ui/guide/al;Laui;)V

    invoke-virtual {v0, v1}, Laui;->a(Laum;)V

    .line 65
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/al;->a:Lcom/twitter/android/moments/ui/guide/g;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/g;->b()Lcom/twitter/android/moments/ui/maker/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Laui;->c(Lauc;)V

    .line 66
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "Module pivot is not supported in moment picker."

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lcom/twitter/media/ui/image/r;",
            ">(",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/guide/al;->a(Lcom/twitter/util/collection/ab;)V

    .line 52
    return-void
.end method

.method public a(Lcom/twitter/android/moments/viewmodels/af;)V
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "Guide pivot is not supported in moment picker."

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
