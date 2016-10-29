.class public final Lcre;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcrc;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcre;)J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcre;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcre;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcre;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcre;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcre;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcre;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcre;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 94
    iget-object v0, p0, Lcre;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "UNDEFINED"

    iput-object v0, p0, Lcre;->e:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method public a(J)Lcre;
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcre;->b:J

    .line 88
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcre;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcre;->a:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcre;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcre;"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcre;->d:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcre;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcre;->e:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcre;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcrg;",
            ">;)",
            "Lcre;"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcre;->c:Ljava/util/List;

    .line 76
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcre;->e()Lcrc;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcrc;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcrc;

    invoke-direct {v0, p0}, Lcrc;-><init>(Lcre;)V

    return-object v0
.end method
