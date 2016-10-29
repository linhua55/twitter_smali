.class public final enum Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field public static final enum b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

.field private static final synthetic c:[Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1185
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string/jumbo v1, "ALLOW_SINGULAR_OVERWRITES"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->a:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1187
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const-string/jumbo v1, "FORBID_SINGULAR_OVERWRITES"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1183
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v1, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->a:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->c:[Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    .prologue
    .line 1183
    const-class v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .locals 1

    .prologue
    .line 1183
    sget-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->c:[Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-object v0
.end method
