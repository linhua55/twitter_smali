.class public Lcom/twitter/model/timeline/dd;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ae",
            "<",
            "Lcom/twitter/model/timeline/dd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/timeline/de;

    invoke-direct {v0}, Lcom/twitter/model/timeline/de;-><init>()V

    sput-object v0, Lcom/twitter/model/timeline/dd;->a:Lcom/twitter/util/serialization/ae;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/model/timeline/dd;->b:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/twitter/model/timeline/dd;->c:I

    .line 26
    return-void
.end method
