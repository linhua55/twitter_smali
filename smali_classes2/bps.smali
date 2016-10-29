.class public Lbps;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lbps;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lbps;

    const/4 v1, -0x1

    const-string/jumbo v2, "Unknown Error"

    invoke-direct {v0, v1, v2}, Lbps;-><init>(ILjava/lang/String;)V

    sput-object v0, Lbps;->a:Lbps;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lbps;->b:I

    .line 100
    iput-object p2, p0, Lbps;->c:Ljava/lang/String;

    .line 101
    return-void
.end method
