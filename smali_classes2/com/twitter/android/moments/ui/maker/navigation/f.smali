.class public Lcom/twitter/android/moments/ui/maker/navigation/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/as;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/maker/navigation/h",
            "<",
            "Lcom/twitter/model/moments/ak;",
            "Lcom/twitter/model/moments/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/t;

.field private final d:Lcom/twitter/android/moments/ui/maker/navigation/g;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/g;Lrx/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/h",
            "<",
            "Lcom/twitter/model/moments/ak;",
            "Lcom/twitter/model/moments/ak;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/g;",
            "Lrx/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    .line 44
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->a:Lcom/twitter/android/moments/ui/maker/navigation/h;

    .line 45
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->d:Lcom/twitter/android/moments/ui/maker/navigation/g;

    .line 46
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->c:Lrx/t;

    .line 47
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/au;",
            ">;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/as;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/f;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/h;

    .line 35
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;)V

    new-instance v0, Lcom/twitter/android/moments/ui/maker/navigation/g;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/maker/navigation/g;-><init>()V

    .line 36
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/twitter/android/moments/ui/maker/navigation/f;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/g;Lrx/t;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/c;

    .line 53
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 54
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/c;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->a:Lcom/twitter/android/moments/ui/maker/navigation/h;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;->a()Lrx/w;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->d:Lcom/twitter/android/moments/ui/maker/navigation/g;

    const/16 v3, 0x12c

    invoke-virtual {v2, v0, v1, v3}, Lcom/twitter/android/moments/ui/maker/navigation/g;->a(Lcom/twitter/android/moments/ui/maker/navigation/ap;Lcom/twitter/android/moments/ui/maker/navigation/ap;I)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    const-wide/16 v2, 0x12c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/navigation/f;->c:Lrx/t;

    .line 59
    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/w;->a(JLjava/util/concurrent/TimeUnit;Lrx/t;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method
