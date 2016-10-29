.class public Lcrg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcrg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcri;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcrh;

    invoke-direct {v0}, Lcrh;-><init>()V

    sput-object v0, Lcrg;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcrg;->b:Lcri;

    .line 148
    iput-object p2, p0, Lcrg;->c:Ljava/lang/String;

    .line 149
    return-void
.end method
