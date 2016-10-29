.class public Lcoc;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcoa;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnv;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcnx;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcoc;->e:J

    .line 175
    return-void
.end method

.method public constructor <init>(Lcoa;)V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcoc;->e:J

    .line 178
    iget-object v0, p1, Lcoa;->c:Ljava/util/Map;

    iput-object v0, p0, Lcoc;->a:Ljava/util/Map;

    .line 179
    iget-object v0, p1, Lcoa;->d:Ljava/lang/String;

    iput-object v0, p0, Lcoc;->b:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcoa;->e:Ljava/lang/String;

    iput-object v0, p0, Lcoc;->c:Ljava/lang/String;

    .line 181
    return-void
.end method

.method static synthetic a(Lcoc;)J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcoc;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcoc;
    .locals 1

    .prologue
    .line 209
    iput-wide p1, p0, Lcoc;->e:J

    .line 210
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcoc;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcoc;->b:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcoc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnv;",
            ">;)",
            "Lcoc;"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcoc;->a:Ljava/util/Map;

    .line 186
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcoc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcnx;",
            ">;)",
            "Lcoc;"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcoc;->d:Ljava/util/Set;

    .line 204
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcoc;
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcoc;->c:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcoc;->e()Lcoa;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcoa;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcoa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcoa;-><init>(Lcoc;Lcob;)V

    return-object v0
.end method
