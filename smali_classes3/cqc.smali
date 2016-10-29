.class public Lcqc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcqc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/twitter/model/moments/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcqf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcqf;-><init>(Lcqd;)V

    sput-object v0, Lcqc;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcqe;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lcqe;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcqc;->b:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcqe;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcqc;->c:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcqe;->c:Lcom/twitter/model/moments/x;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/x;

    iput-object v0, p0, Lcqc;->d:Lcom/twitter/model/moments/x;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcqe;Lcqd;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcqc;-><init>(Lcqe;)V

    return-void
.end method
