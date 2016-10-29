.class public Lckt;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lckv;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lckv;->a(Lckv;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lckt;->a:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lckv;->b(Lckv;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lckt;->b:Ljava/util/List;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lckv;Lcku;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lckt;-><init>(Lckv;)V

    return-void
.end method
