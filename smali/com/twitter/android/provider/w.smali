.class interface abstract Lcom/twitter/android/provider/w;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1568
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cluster_titles"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/w;->a:[Ljava/lang/String;

    return-void
.end method
