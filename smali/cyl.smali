.class Lcyl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcyg;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyh;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyi;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method constructor <init>(Lcyg;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {v1}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcyl;->b:Ljava/util/List;

    .line 207
    invoke-static {v1}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcyl;->c:Ljava/util/List;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcyl;->d:I

    .line 212
    iput-object p1, p0, Lcyl;->a:Lcyg;

    .line 213
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcyl;->d:I

    invoke-static {v0, p1}, Lcyf;->a(II)I

    move-result v0

    iput v0, p0, Lcyl;->d:I

    .line 217
    return-void
.end method
