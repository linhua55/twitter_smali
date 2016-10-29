.class public Lchi;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lchi;->a:[Ljava/lang/String;

    .line 14
    sget-object v0, Lchi;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "entity_id"

    aput-object v2, v0, v1

    .line 15
    sget-object v0, Lchi;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string/jumbo v2, "data_type_tag"

    aput-object v2, v0, v1

    .line 16
    return-void
.end method
