.class public Lcqg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcqg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcqt;

.field public final c:Lcom/twitter/model/moments/MomentPageDisplayMode;

.field public final d:Lcom/twitter/model/moments/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcqi;

    invoke-direct {v0}, Lcqi;-><init>()V

    sput-object v0, Lcqg;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcqh;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcqh;->a:Lcqt;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    iput-object v0, p0, Lcqg;->b:Lcqt;

    .line 35
    iget-object v0, p1, Lcqh;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcqg;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 36
    iget-object v0, p1, Lcqh;->c:Lcom/twitter/model/moments/ak;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    iput-object v0, p0, Lcqg;->d:Lcom/twitter/model/moments/ak;

    .line 37
    return-void
.end method

.method public static a(JLcqt;)Lcqg;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->a:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {p0, p1, p2, v0}, Lcqg;->a(JLcqt;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqg;

    move-result-object v0

    return-object v0
.end method

.method private static a(JLcqt;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqg;
    .locals 2

    .prologue
    .line 113
    invoke-static {p2}, Lcom/twitter/model/moments/am;->a(Lcqt;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p3}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 117
    new-instance v1, Lcqh;

    invoke-direct {v1}, Lcqh;-><init>()V

    .line 118
    invoke-virtual {v1, v0}, Lcqh;->a(Lcom/twitter/model/moments/ak;)Lcqh;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p3}, Lcqh;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqh;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p2}, Lcqh;->a(Lcqt;)Lcqh;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcqh;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqg;

    .line 117
    return-object v0
.end method

.method public static b(JLcqt;)Lcqg;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {p0, p1, p2, v0}, Lcqg;->a(JLcqt;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqg;

    move-result-object v0

    return-object v0
.end method

.method public static c(JLcqt;)Lcqg;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    invoke-static {p0, p1, p2, v0}, Lcqg;->a(JLcqt;Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcqg;

    move-result-object v0

    return-object v0
.end method
