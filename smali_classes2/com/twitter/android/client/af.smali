.class public Lcom/twitter/android/client/af;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/android/client/af;


# instance fields
.field public final b:Z

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1486
    new-instance v0, Lcom/twitter/android/client/af;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/twitter/android/client/af;-><init>(ZLjava/lang/String;Z)V

    sput-object v0, Lcom/twitter/android/client/af;->a:Lcom/twitter/android/client/af;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-boolean p1, p0, Lcom/twitter/android/client/af;->b:Z

    .line 1494
    iput-object p2, p0, Lcom/twitter/android/client/af;->c:Ljava/lang/String;

    .line 1495
    iput-boolean p3, p0, Lcom/twitter/android/client/af;->d:Z

    .line 1496
    return-void
.end method
