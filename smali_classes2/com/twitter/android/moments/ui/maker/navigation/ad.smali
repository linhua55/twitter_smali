.class public Lcom/twitter/android/moments/ui/maker/navigation/ad;
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
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;Lcom/twitter/android/moments/ui/maker/navigation/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ae;",
            ">;",
            "Lcom/twitter/android/moments/ui/maker/navigation/h",
            "<",
            "Lcom/twitter/model/moments/ak;",
            "Lcom/twitter/model/moments/ak;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ad;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    .line 35
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/ad;->a:Lcom/twitter/android/moments/ui/maker/navigation/h;

    .line 36
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/navigation/aq",
            "<",
            "Lcom/twitter/android/moments/ui/maker/navigation/aa;",
            "Lcom/twitter/android/moments/ui/maker/navigation/c;",
            "Lcom/twitter/android/moments/ui/maker/navigation/ae;",
            ">;)",
            "Lcom/twitter/android/moments/ui/maker/navigation/as;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/ad;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/h;

    .line 28
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;)V

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ad;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/aq;Lcom/twitter/android/moments/ui/maker/navigation/h;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 2
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
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ad;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/c;

    .line 42
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/ad;->b:Lcom/twitter/android/moments/ui/maker/navigation/aq;

    iget-object v1, v1, Lcom/twitter/android/moments/ui/maker/navigation/aq;->c:Lcom/twitter/android/moments/ui/maker/navigation/au;

    check-cast v1, Lcom/twitter/android/moments/ui/maker/navigation/ae;

    .line 43
    iget-object v1, v1, Lcom/twitter/android/moments/ui/maker/navigation/ae;->a:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/c;->a(Lcom/twitter/model/moments/ak;)V

    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/ad;->a:Lcom/twitter/android/moments/ui/maker/navigation/h;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;->a()Lrx/w;

    move-result-object v0

    return-object v0
.end method
