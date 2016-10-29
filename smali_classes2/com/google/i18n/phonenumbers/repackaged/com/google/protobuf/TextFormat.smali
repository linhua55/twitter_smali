.class public final Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

.field private static final c:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

.field private static final d:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

.field private static final e:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-class v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;->a:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    invoke-direct {v0, v2}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;-><init>(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/c;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;->b:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    .line 63
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    invoke-direct {v0, v2}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;-><init>(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/c;)V

    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;->a(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;Z)Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;->c:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    .line 65
    new-instance v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    invoke-direct {v0, v2}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;-><init>(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/c;)V

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;->b(Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;Z)Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;->d:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/e;

    .line 1108
    invoke-static {}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;->a()Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/d;->a()Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat;->e:Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
