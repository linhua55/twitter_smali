.class Lcom/twitter/fabric/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lbiv;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbiv;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbiv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/twitter/fabric/a;->a:Lbiv;

    .line 179
    iput-object p2, p0, Lcom/twitter/fabric/a;->b:Ljava/util/Map;

    .line 180
    return-void
.end method
