.class public Lcud;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcss;

.field public final e:Lcom/twitter/model/core/TwitterSocialProof;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const-string/jumbo v0, "Tweet"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "TweetWithFollow"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "TweetFollowOnly"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcud;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcss;Lcom/twitter/model/core/TwitterSocialProof;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcud;->b:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcud;->c:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcud;->d:Lcss;

    .line 49
    iput-object p4, p0, Lcud;->e:Lcom/twitter/model/core/TwitterSocialProof;

    .line 50
    return-void
.end method
