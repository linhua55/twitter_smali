.class public Ldiy;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ldiy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ldiy;

    invoke-direct {v0}, Ldiy;-><init>()V

    sput-object v0, Ldiy;->a:Ldiy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldiy;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ldiy;->a:Ldiy;

    return-object v0
.end method


# virtual methods
.method public a(Ldje;)Ldje;
    .locals 0

    .prologue
    .line 45
    return-object p1
.end method

.method public b()Lrx/t;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
