.class public abstract Lcge;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcge;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcge;->a:Lcge;

    .line 22
    return-void
.end method

.method public static b()Lcge;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcge;->a:Lcge;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Make sure an instance is set before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    sget-object v0, Lcge;->a:Lcge;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method
