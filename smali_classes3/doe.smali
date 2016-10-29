.class public abstract Ldoe;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:Ldog;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static final d:Ldog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ldof;

    invoke-direct {v0}, Ldof;-><init>()V

    sput-object v0, Ldoe;->d:Ldog;

    .line 64
    sget-object v0, Ldoe;->d:Ldog;

    sput-object v0, Ldoe;->a:Ldog;

    .line 65
    const-string/jumbo v0, "Unknown"

    sput-object v0, Ldoe;->b:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "Unknown"

    sput-object v0, Ldoe;->c:Ljava/lang/String;

    .line 67
    return-void
.end method
